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


#ifndef LLVMOBFUSCATIONPASS_OPERATORSUBSTITUTION_H
#define LLVMOBFUSCATIONPASS_OPERATORSUBSTITUTION_H

// LLVM include
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"

#include "../CryptoUtils/CryptoUtils.h"
#include "llvm/IR/LLVMContext.h"

// Namespace
using namespace llvm;
using namespace std;

namespace llvm {
    class OperatorSubstitution : public PassInfoMixin<OperatorSubstitution> {
    public:
        PreservedAnalyses run(Function &F, FunctionAnalysisManager &AM);
        static bool isRequired() { return true; }

        bool runOnFunction(Function &TargetFunction);
        bool substitutionSelector(Function &TargetFunction);

        //Arithmetic Operations
        void addSubstitution(BinaryOperator *targetBinaryOperator);
        void subSubstitution(BinaryOperator *TargetBinaryOperator);

        //DO IT YOURSELF
        void addDIYSubstitution(BinaryOperator *TargetBinaryOperator);

        //Boolean Operations
        void andSubstitution(BinaryOperator *TargetBinaryOperator);
        void orSubstitution(BinaryOperator *TargetBinaryOperator);
        void xorSubstitution(BinaryOperator *TargetBinaryOperator);

    private:
        static AnalysisKey Key;
    };
}// namespace llvm


#endif//LLVMOBFUSCATIONPASS_OPERATORSUBSTITUTION_H
