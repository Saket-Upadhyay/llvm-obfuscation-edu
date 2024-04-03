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
FITNESS FOR A PARTICULAR PURPOSE AND NON INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

#include "StaticFunctionCallAnalysisPass.h"

//Maps function pointers to unsigned integers (number of calls). {&(_Z3Addii) -> 2}
using SCCReturnType = llvm::MapVector<const llvm::Function *, unsigned>;
//------------------------------------------------------------------------------
// StaticCallCounter Implementation
//------------------------------------------------------------------------------
SCCReturnType StaticFunctionCallAnalysisPass::runOnModule(llvm::Module &M) {
    SCCReturnType ResultMapVector;
    for (auto &TargetFunction: M) {
        for (auto &TargetBasicBlock: TargetFunction) {
            for (auto &TargetInstruction: TargetBasicBlock) {

                // dynamic_cast will fail if the instruction is not a Call.
                if (auto *CallBasePointer = llvm::dyn_cast<llvm::CallBase>(&TargetInstruction)) {

                    // If callBasePointer is a direct function call then CalleeFunctionPointer will be not null.
                    if (auto *CalleeFunctionPointer = CallBasePointer->getCalledFunction()) {
                        // We have a direct function call - update the count for the fun. being called.
                        auto *StaticCallCount = ResultMapVector.find(CalleeFunctionPointer);
                        if (ResultMapVector.end() == StaticCallCount) {
                            StaticCallCount = ResultMapVector.insert(std::make_pair(CalleeFunctionPointer, 0)).first;
                        }
                        ++StaticCallCount->second;
                    }
                }
            }
        }
    }
    return ResultMapVector;
}


SCCReturnType StaticFunctionCallAnalysisPass::run(llvm::Module &M, llvm::ModuleAnalysisManager &) {
    return runOnModule(M);
}

//------------------------------------------------------------------------------
// New PM Registration
//------------------------------------------------------------------------------
llvm::AnalysisKey StaticFunctionCallAnalysisPass::Key;

llvm::PassPluginLibraryInfo getSimpleStaticCallCounterPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "sfcca", LLVM_VERSION_STRING,
            [](llvm::PassBuilder &PB) {
                PB.registerAnalysisRegistrationCallback(
                        [](llvm::ModuleAnalysisManager &MAM) {
                            MAM.registerPass([&] { return StaticFunctionCallAnalysisPass(); });
                        });
            }};
};

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return getSimpleStaticCallCounterPluginInfo();
}
