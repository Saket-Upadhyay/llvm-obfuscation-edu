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

#include "OperatorSubstitution.h"

// Try changing this to observe effects on compile time and runtime.
// notice the bitcode to machine object compilation time in tests directory.
// llc -filetype=obj --relocation-model=pic  -o modified.o out.bc
int ObfuscationIterationCounter = 8;

bool OperatorSubstitution::runOnFunction(llvm::Function &TargetFunction) {

    if (ObfuscationIterationCounter <= 0) {
        errs() << "Iteration Counter should be >=1";
        return false;
    }

    // Check Declaration and ExternalLinkage
    if (!TargetFunction.isDeclaration() && TargetFunction.hasAvailableExternallyLinkage() == 0) {
        errs() << "Running OpSubstitutionPass On Function =>  " << TargetFunction.getName() << "\n";
        substitutionSelector(TargetFunction);
        return true;
    }

    return false;
}

bool OperatorSubstitution::substitutionSelector(Function &TargetFunction) {
    for (int Oitrcopy = ObfuscationIterationCounter; Oitrcopy > 0; --Oitrcopy) {
        for (auto &BasicBlock: TargetFunction) {
            for (auto &Instruction: BasicBlock) {
                if (auto *TargetBinaryOperator = dyn_cast<llvm::BinaryOperator>(&Instruction)) {
                    switch (TargetBinaryOperator->getOpcode()) {

                        case BinaryOperator::Add:
                            // REPLACE WITH
                            // addDIYSubstitution(targetBinaryOperator)
                            // AFTER IMPLEMENTING YOUR LOGIC
                            addSubstitution(TargetBinaryOperator);
                            break;

                        case BinaryOperator::Sub:
                            subSubstitution(TargetBinaryOperator);
                            break;

                        case Instruction::And:
                            andSubstitution(TargetBinaryOperator);
                            break;

                        case Instruction::Or:
                            orSubstitution(TargetBinaryOperator);
                            break;

                        case Instruction::Xor:
                            xorSubstitution(TargetBinaryOperator);
                            break;

                        default:
                            break;
                    }
                }
            }
        }
    }// Iteration Counter
    return false;
}


// a+b => (a&b) + (a|b)
void OperatorSubstitution::addSubstitution(BinaryOperator *TargetBinaryOperator) {
    BinaryOperator *AndOp;
    BinaryOperator *OrOp;
    BinaryOperator *NewAddOp;

    if (TargetBinaryOperator->getOpcode() == Instruction::Add) {

        auto *Operand1 = TargetBinaryOperator->getOperand(0);
        auto *Operand2 = TargetBinaryOperator->getOperand(1);
        // a&b
        AndOp = BinaryOperator::Create(Instruction::And, Operand1, Operand2, "", TargetBinaryOperator);
        // a|b
        OrOp = BinaryOperator::Create(Instruction::Or, Operand1, Operand2, "", TargetBinaryOperator);
        // (a&b) + (a|b)
        NewAddOp = BinaryOperator::Create(Instruction::Add, AndOp, OrOp, "", TargetBinaryOperator);

        TargetBinaryOperator->replaceAllUsesWith(NewAddOp);
    }
}


// a=b-c =>
// r = rand ();
// s = b + r; Stage 1
// t = s - c; Stage 2
// a = t - r; Final Stage
void OperatorSubstitution::subSubstitution(BinaryOperator *TargetBinaryOperator) {
    BinaryOperator *Stage1op;
    BinaryOperator *Stage2op;
    BinaryOperator *FinalStageOp;

    auto *Operand1 = TargetBinaryOperator->getOperand(0);
    auto *Operand2 = TargetBinaryOperator->getOperand(1);

    if (TargetBinaryOperator->getOpcode() == Instruction::Sub) {
        // r = rand ();
        Type *BinaryOperatorDataType = TargetBinaryOperator->getType();
        auto *RandomConstant = (ConstantInt *) ConstantInt::get(BinaryOperatorDataType, cryptoutils->get_uint64_t());

        // s = b + r; STAGE1
        Stage1op = BinaryOperator::Create(Instruction::Add, Operand1, RandomConstant, "", TargetBinaryOperator);
        // t = s - c; STAGE2
        Stage2op = BinaryOperator::Create(Instruction::Sub, Stage1op, Operand2, "", TargetBinaryOperator);
        // a = t - r; STAGE3
        FinalStageOp = BinaryOperator::Create(Instruction::Sub, Stage2op, RandomConstant, "", TargetBinaryOperator);

        TargetBinaryOperator->replaceAllUsesWith(FinalStageOp);
    }
}


//DO IT YOURSELF
// ADD substitution with same logic of SUB. Here is what you need to do -
// r = rand (); constant
// s = b + r; Stage 1
// t = s + c; Stage 2
// a = t - r; Final Stage
// Ultimately giving us -> a = b + r + c - r = b + c;
void OperatorSubstitution::addDIYSubstitution(BinaryOperator *TargetBinaryOperator) {
    //Extracting operands
    auto *Operand1 = TargetBinaryOperator->getOperand(0);//b
    auto *Operand2 = TargetBinaryOperator->getOperand(1);//c

    //Creating Operations for Stage
    BinaryOperator *Stage1op;
    /*Create stage2 and finalStageop*/

    if (TargetBinaryOperator->getOpcode() == llvm::Instruction::Add) {
        // r = rand ();
        Type *BinaryOperatorDataType = TargetBinaryOperator->getType();
        auto *RandomConstant = (ConstantInt *) ConstantInt::get(BinaryOperatorDataType, cryptoutils->get_uint64_t());//r

        //// USE BinaryOperator::Create(<llvm::Instruction>, <first operand>, <second operand>, <name>, <Insert Before>) to create stages.
        //// Look at code of OperatorSubstitution::subSubstitution(BinaryOperator *targetBinaryOperator).

        // stage1 = b + r
        /*YOUR CODE*/

        // stage2 = stage1 + c
        /*YOUR CODE*/

        // finalStageop = stage2 - r
        /*YOUR CODE*/

        //Replace all target operators with your finalStageop implementation.
        TargetBinaryOperator->replaceAllUsesWith(/*YOUR CODE, REPLACE THIS*/ TargetBinaryOperator);
    }
}

// a = b & c => a = (b^~c)& b
void OperatorSubstitution::andSubstitution(BinaryOperator *TargetBinaryOperator) {
    BinaryOperator *NotCop;
    BinaryOperator *XORop;
    BinaryOperator *NewAndOp;

    auto *Operand1 = TargetBinaryOperator->getOperand(0);
    auto *Operand2 = TargetBinaryOperator->getOperand(1);

    // ~c
    NotCop = BinaryOperator::CreateNot(Operand2, "", TargetBinaryOperator);

    // Create XOR => (b^~c)
    XORop = BinaryOperator::Create(Instruction::Xor, Operand1, NotCop, "", TargetBinaryOperator);

    // Create AND => (b^~c) & b
    NewAndOp = BinaryOperator::Create(Instruction::And, XORop, Operand1, "", TargetBinaryOperator);

    TargetBinaryOperator->replaceAllUsesWith(NewAndOp);
}

// a = b | c => a = (b & c) | (b ^ c)
void OperatorSubstitution::orSubstitution(BinaryOperator *TargetBinaryOperator) {
    BinaryOperator *AndOp;
    BinaryOperator *XorOp;
    BinaryOperator *NewORop;

    auto *Operand1 = TargetBinaryOperator->getOperand(0);
    auto *Operand2 = TargetBinaryOperator->getOperand(1);

    // (b & c)
    AndOp = BinaryOperator::Create(Instruction::And, Operand1, Operand2, "", TargetBinaryOperator);

    // (b ^ c)
    XorOp = BinaryOperator::Create(Instruction::Xor, Operand1, Operand2, "", TargetBinaryOperator);

    // (b & c) | (b ^ c)
    NewORop = BinaryOperator::Create(Instruction::Or, AndOp, XorOp, "", TargetBinaryOperator);

    TargetBinaryOperator->replaceAllUsesWith(NewORop);
}


// a = b ^ c => (!b & c) | (b & !c)
void OperatorSubstitution::xorSubstitution(BinaryOperator *TargetBinaryOperator) {
    BinaryOperator *NewXoRop;
    BinaryOperator *NotOpB;
    BinaryOperator *NotOpC;
    BinaryOperator *AndOp1;
    BinaryOperator *AndOp2;

    auto *Operand1 = TargetBinaryOperator->getOperand(0);
    auto *Operand2 = TargetBinaryOperator->getOperand(1);

    // !b
    NotOpB = BinaryOperator::CreateNot(Operand1, "", TargetBinaryOperator);

    // !a & b
    AndOp1 = BinaryOperator::Create(Instruction::And, Operand2, NotOpB, "", TargetBinaryOperator);

    // !c
    NotOpC = BinaryOperator::CreateNot(Operand2, "", TargetBinaryOperator);

    // a & !b
    AndOp2 = BinaryOperator::Create(Instruction::And, Operand1, NotOpC, "", TargetBinaryOperator);

    // (!a & b) | (a & !b)
    NewXoRop = BinaryOperator::Create(Instruction::Or, AndOp1, AndOp2, "", TargetBinaryOperator);

    TargetBinaryOperator->replaceAllUsesWith(NewXoRop);
}


PreservedAnalyses OperatorSubstitution::run(Function &F, FunctionAnalysisManager &AM) {

    runOnFunction(F);

    return PreservedAnalyses::all();
}

// Pass Registration, new PM

llvm::PassPluginLibraryInfo getObfuscationPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "opsubobf", LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                        [](llvm::StringRef Name, llvm::FunctionPassManager &FPM,
                           llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) {
                            if (Name == "opsubobf") {
                                FPM.addPass(llvm::OperatorSubstitution());
                                return true;
                            }
                            return false;
                        });
            }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return getObfuscationPluginInfo();
}
