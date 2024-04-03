//
// Created by Saket Upadhyay on March 18, 2024.
//
/*
MIT License

Copyright (c) 2024 Saket Upadhyay

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/


// Project Imports
#include "LLVMObfuscation.h"
#include "OperatorSubstitution.h"
#include "StaticFunctionCallAnalysisPass.h"

// Aliasing Namespace
namespace commandline = llvm::cl;

// Adding commandline options
static llvm::cl::OptionCategory OptionCategory{
        "LLVM Obfuscation Tool v1.0 Options"};

static commandline::opt<std::string> InputModule{
        commandline::Positional, commandline::desc{"<Input>"},
        commandline::value_desc{"bitcode filename"}, commandline::Required,
        commandline::cat{OptionCategory}};

static commandline::opt<std::string> OutputFileName{
        commandline::Positional,
        commandline::desc{"<Output>"},
        commandline::value_desc{"output filename"}, commandline::Required,
        commandline::cat{OptionCategory}};


static commandline::opt<int> PassSelector{
        commandline::Positional,
        commandline::desc{"<Pass Selector>"},
        commandline::value_desc{"pass selector int"}, commandline::Required,
        commandline::cat{OptionCategory}};


//Helper Functions' Declarations
static void saveFcaResultAsCsv(raw_fd_ostream &RawFdOstream, const llvm::MapVector<const llvm::Function *, unsigned> &SSCResultStructure);
int saveModuleAsBitcode(llvm::Module &Module, const std::string &Filename);
static void runCustomPassesOnModule(llvm::Module &TargetModule, int PassSelectorInt);


/**
 * Main function-
 * 1. Takes a file as argument to pass it to the LLVMIR parser.
 * 2. Gets the module and then run passes on it.
 * 3. Saves it as modified bitcode.
 * @param argc
 * @param argv
 * @return
 */
int main(int argc, char **argv) {
    commandline::HideUnrelatedOptions(OptionCategory);
    commandline::ParseCommandLineOptions(argc, argv, "LLVM Obfuscation Tool v1.0."
                                                     "\nInput - Takes path of the LLVM bitcode."
                                                     "\nOutput - File name to save modified bitcode as."
                                                     "\nPass Selector - Takes an integer. 0 = All Passes, 1 = OpSubstitution Pass, 2 = User Defined Pass, ..."
                                                     "\n"
                                                     "\nNOTE: The Pass Selector is implemented in runCustomPassesOnModule function in LLVMObfuscation.cpp"
                                                     "\nThe Analysis passes run on every case at the end, this is my design."
                                                     "\n");
    llvm::llvm_shutdown_obj SDO;

    // Parse IR
    llvm::SMDiagnostic Error;
    llvm::LLVMContext Context;
    std::unique_ptr<llvm::Module> AModule = llvm::parseIRFile(InputModule.getValue(), Error, Context);

    if (!AModule) {
        llvm::errs() << "Error reading the bitcode file: " << InputModule << "\n";
        Error.print(argv[0], llvm::errs());
        std::exit(-1);
    }
    llvm::errs() << "\n";

    // Pass the module to the runCustomPassesOnModule function to be modified.
    runCustomPassesOnModule(*AModule, PassSelector.getValue());

    //Try to save the modified module to valid bitcode file
    if (saveModuleAsBitcode(*AModule, OutputFileName.getValue())) {
        llvm::errs() << "Module Write Error.\n";
        std::exit(-1);
    }
    llvm::errs() << "File Written to " << OutputFileName.getValue() << "\n";

    return 0;
}


/*
 * Function to save SCC analysis result to a CSV file.
 */
static void saveFcaResultAsCsv(raw_fd_ostream &RawFdOstream,
                               const StaticFunctionCallAnalysisPass::Result &SSCResultStructure) {

    //Declaring CSV Headers
    const char *CsvNameHeader = "FUNCTION NAME";
    const char *CsvCallNumberHeader = "NUMBER OF STATIC CALLS";
    RawFdOstream << llvm::format("%s,%s\n", CsvNameHeader, CsvCallNumberHeader);

    for (auto &ResultElement: SSCResultStructure) {
        RawFdOstream << llvm::format("%s, %lu\n", ResultElement.first->getName().str().c_str(),
                                     ResultElement.second);
    }
}


/**
 * Takes the module and runs the pass on it.
 * @param targetModule
 */
static void runCustomPassesOnModule(llvm::Module &TargetModule, int PassSelectorInt) {

    //Pre-pass setup
    llvm::ModulePassManager MPM;  //For Module Passes
    llvm::FunctionPassManager FPM;// For Function Passes

    //Declaring Analysis Managers
    llvm::ModuleAnalysisManager MAM;
    llvm::FunctionAnalysisManager FAM;
    llvm::CGSCCAnalysisManager CAM;
    llvm::LoopAnalysisManager LAM;
    llvm::PassBuilder PB;

    //Registering Managers
    //This creates a default Analysis Pass Pipeline, some preliminary passes are required for our Transformations and Analyses.
    PB.registerModuleAnalyses(MAM);
    PB.registerFunctionAnalyses(FAM);
    PB.registerCGSCCAnalyses(CAM);
    PB.registerLoopAnalyses(LAM);
    PB.crossRegisterProxies(LAM, FAM, CAM, MAM);

    //Adding Function Passes
    switch (PassSelectorInt) {
        case 1:
            FPM.addPass(OperatorSubstitution());
            //Note: Operator Substitution is a Function Pass, we would use MPM if it were a Module Pass.
            break;
        case 2:
            // ADD YOUR OWN PASS HERE
            break;
        default:
        case 0:
            FPM.addPass(OperatorSubstitution());
            // ADD ALL YOUR OTHER PASSES HERE TOO, 0 Case is to enable all passes
    }


    /*
     * Running All registered Function Passes
     */
    for (auto &TargetFunction: TargetModule) {
        FPM.run(TargetFunction, FAM);
    }


    //Registering Analysis passes
    MAM.registerPass([&] { return StaticFunctionCallAnalysisPass(); });
    /* Running ModuleAnalysisPass on the transformed module and then saving the result to a csv file */
    //Running Analysis pass on TargetModule. The Result type is declared in src/StaticFunctionCallAnalysisPass/StaticFunctionCallAnalysisPass.h
    StaticFunctionCallAnalysisPass::Result SimpleStaticProgramAnalysisResult = MAM.getResult<StaticFunctionCallAnalysisPass>(TargetModule);

    std::error_code ErrorCode;
    //Naming the CSV file based on the name of the TargetModule.
    string SccOutFileName = "StaticFunctionCallCount_" + TargetModule.getName().str() + ".csv";

    //Creating a raw file out stream and passing it to the helper function to write to it.
    llvm::raw_fd_ostream FileDescriptorOutputStream(SccOutFileName, ErrorCode);

    if (!ErrorCode) {//If file opens successfully there will not be any errorCode.
        saveFcaResultAsCsv(FileDescriptorOutputStream, SimpleStaticProgramAnalysisResult);
        FileDescriptorOutputStream.close();// Close the active File Descriptor.
    } else {
        errs() << "Cannot open file to save function call counter results.\n";
    }
}


/**
 * Saves the module a bitcode file.
 * @param module
 * @param filename
 */
int saveModuleAsBitcode(llvm::Module &Module, const std::string &Filename) {
    std::error_code Error;
    llvm::raw_fd_ostream OutputFileStream(Filename, Error, llvm::sys::fs::OF_None);

    std::string ErrorMessage;
    llvm::raw_string_ostream ErrorStream(ErrorMessage);

    //Verify validity of the modified module
    if (llvm::verifyModule(Module, &ErrorStream)) {
        // Verification failed, print the error message
        ErrorStream.flush();
        llvm::errs() << "Error: Invalid module - " << ErrorMessage << "\n";
        return -1;
    }

    if (Error) {
        llvm::errs() << "Error opening file: " << Error.message() << "\n";
        return -1;
    }
    llvm::WriteBitcodeToFile(Module, OutputFileStream);
    return 0;
}