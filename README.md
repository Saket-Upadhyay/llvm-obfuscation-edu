[![macOS Build](https://github.com/Saket-Upadhyay/llvm-obfuscation-edu/actions/workflows/macos-build.yml/badge.svg?branch=main)](https://github.com/Saket-Upadhyay/llvm-obfuscation-edu/actions/workflows/macos-build.yml) [![Ubuntu Build](https://github.com/Saket-Upadhyay/llvm-obfuscation-edu/actions/workflows/ubuntu-build.yml/badge.svg?branch=main)](https://github.com/Saket-Upadhyay/llvm-obfuscation-edu/actions/workflows/ubuntu-build.yml) ![LLVM-17](https://img.shields.io/badge/LLVM-17-2ec444?style=flat&logo=llvm)



# Introduction to Static Code Analysis & Binary Obfuscation using LLVM Passes.

## About

This codebase is intentionally simple and contains the bare minimum code to aid learning.

Build macOS and tested on macOS14.3.1 and Ubuntu22.04LTS and with LLVM-17.0;

## Table of contents

* [About](#about)
* [Table of contents](#table-of-contents)
* [Project Contents](#project-contents)
    * [src directory](#src-directory)
    * [Compare Assembly](#compare-assembly)
    * [Test Directory](#test-directory)
* [Build Process](#build-process)
    * [Prerequisite](#prerequisite)
        * [Install LLVM 17+](#install-llvm-17)
        * [CMake, Ninja, objdump](#cmake-ninja-objdump)
    * [Compile](#compile)
        * [Fetch Code](#fetch-code)
        * [Compile](#compile-1)
* [Use](#use)
    * [Tool](#tool)
        * [Location of binary and adding it to the system path](#location-of-binary-and-adding-it-to-the-system-path)
        * [Using the binary](#using-the-binary)
    * [Tests](#tests)
* [License](#license)
* [Contribute](#contribute)
* [References / Citations](#references--citations)

## Project Contents

```text
.
├── CMakeLists.txt
├── CompareAssembly
├── LICENSE
├── README.md
├── src
└── tests
```

#### src directory

1. `LLVMObfuscation.cpp` (Driver Tool): Takes LLVM bitcode, runs passes on it, then saves the modified bitcode.
2. `OpSubstitutionPass` (Transformation Pass): Operator substitution obfuscation pass.
3. `StaticFunctionCallAnalysis` (Analysis Pass): Counts the number of static calls for each function in a module and
   saves
   the data in a CSV file.
4. `CryptoUtils`<sup>[ø](#references--citations)</sup> : Pseudorandom number generator.

```text
src
├── CMakeLists.txt
├── CryptoUtils
│   └── ...
│  
├── LLVMObfuscation.cpp
├── LLVMObfuscation.h
│  
├── OpSubstitutionPass
│   ├── CMakeLists.txt
│   ├── OperatorSubstitution.cpp
│   └── OperatorSubstitution.h
│
└── StaticFunctionCallAnalysisPass
    ├── CMakeLists.txt
    ├── StaticFunctionCallAnalysisPass.cpp
    └── StaticFunctionCallAnalysisPass.h
```

#### Compare Assembly

This directory contains the assembly output of OpSubstitutionPass with 1 and 3 iterations, along with an un-obfuscated
assembly with the source code on two architectures.

```
aarch64: AppleM2; macOS14.3.1 (23D60) Darwin Kernel Version 23.3.0
intelx86: 13th Gen Intel® Core™ i9-13900KS; Ubuntu22.04.3 LTS 5.15.0-101-generic
```

```text
CompareAssembly
├── aarch64
│   ├── obfuscatedbinaryITR1aarch64.asm
│   ├── obfuscatedbinaryITR3aarch64.asm
│   ├── originalbinaryAarch64.asm
│   └── sourcecode.cpp
└── intelx86
    ├── obfuscatedbinaryITR1x86.asm
    ├── obfuscatedbinaryITR3x86.asm
    ├── originalbinaryx86.asm
    └── sourcecode.cpp
```

#### Test Directory

Contains a C++ file to observe the effects of the passes and a Makefile to compile it.

```text
tests
├── Makefile
└── ObfuscationTest.cpp
```

goto [Tests](#tests) section to read more.

## Build Process

### Prerequisite

#### Install LLVM 17+

Linux/Ubuntu:
[read more here](https://apt.llvm.org)

TLDR; -

```shell
sudo apt-get update
sudo apt install lsb-release wget software-properties-common gnupg cmake ninja-build
wget https://apt.llvm.org/llvm.sh; chmod +x llvm.sh; sudo ./llvm.sh 17 all
```

For macOS, you can use [homebrew](https://brew.sh) to install LLVM-17 by

```sh
brew install llvm@17
```

Add LLVM binaries to your shell path (change to .zshrc if applicable):

```shell
echo "export PATH=$(llvm-config --bindir):$PATH" >>~/.bashrc
source ~/.bashrc
reset
```

#### CMake, Ninja, objdump

Linux/Ubuntu:

```shell
apt-get install cmake ninja objdump
```

macOS<sup>†</sup>:

```shell
brew install cmake ninja
```

> <sup>†</sup> _macOS ships with objdump, it is part of `com.apple.pkg.Essentials`._
> _LLVM usually ships with `llvm-objdump`; our Makefile in `tests` can use whichever is in the path._

### Compile

#### Fetch Code

```shell
git clone git@github.com:Saket-Upadhyay/llvm-obfuscation-edu.git
```

#### Compile

```shell
cd llvm-obfuscation-edu
cmake -GNinja -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --config Release
```

## Use

### Tool

#### Location of binary and adding it to the system path

The tool's binary will be compiled at `./build/src/llvmobfuscator`.
You can create a symlink to the binary or add `/build/src/` to the `PATH`.

To add the build path to PATH, from your project root execute -

```shell
export PATH="./build/src/":$PATH
```

#### Using the binary

```shell
llvmobfuscator <Input> <Output> <Pass Selector>
```

1. Input - Takes the path of the LLVM bitcode to modify.
2. Output - File name to save modified bitcode as.
3. Pass Selector - Takes an integer.
1. 0 = Run all Passes
2. 1 = Operator substitution Pass
3. 2 = User Defined Pass
4. ...

> NOTE: The Pass Selector is implemented in the runCustomPassesOnModule function in LLVMObfuscation.cpp. You can add
> your
> passes in the switch statement to isolate execution. This document will change if I add more passes in the future.
> This design is good for observing the transformations of specific obfuscation.
>
> Analysis passes are run on all options.

### Tests

Build the project, then go to the `tests` directory and execute -

```shell
make all
```

This will create the following files in the tests directory

```text
tests
├── Makefile
├── ObfuscationTest.cpp
├── ObfuscationTool -> ../build/src/llvmobfuscator
├── StaticFunctionCallCount_originalbinary.bc.csv
├── obfuscatedbinary
├── obfuscatedbinary.asm
├── obfuscatedbinary.bc
├── obfuscatedbinary.ll
├── obfuscatedbinary.o
├── originalbinary
├── originalbinary.asm
├── originalbinary.bc
├── originalbinary.ll
└── originalbinary.o
```

1. Two executable binary files, original and obfuscated.
2. LLVM bitcode for binaries.
3. LLVM IR file for binaries.
4. Machine object files for binaries.
5. Assembly dump for the binaries as respective `.asm` files.<sup>µ</sup>
6. StaticFunctionCallCount_*.csv, contains SFCC Analysis Pass data.
7. ObfuscationTool: a symlink to `/build/src/llvmobfuscator`.

**For cleanup, execute -**

```shell
make clean
```

> _It is assumed that you have built the tool, and it is available
at `../build/src/llvmobfuscator`.
A symlink to that file named `ObfuscationTool` is created in the `tests` folder._
>
> µ:  `*.asm` files will only be produced if either `objdump` or `llvm-objdump` is found in the environment path.

**To create just the symlink, execute -**

```shell
make symlinktool
```

or you can create it manually by

```shell
ln -s ../build/src/llvmobfuscator ObfuscationTool
```

This will create an `ObfuscationTool` symlink.


---

## License

> MIT License - [See this file](LICENSE)

_[ø](#references--citations) except CryptoUtils._

## Contribute

Please don't hesitate to add new obfuscation passes. The goal is to annotate the code so that it is easy for students to
follow along, and leave some opportunities for experiments.

## References / Citations

1. **ø** CryptoUtils is an AES-CTR-based cryptographically secure pseudo-random generator by jrinaldini, pjunod; UIUC.
   This
   code
   follows the UIUC OS License and is not covered under the MIT License of this project.
2. [LLVM Programmers Manual](https://www.llvm.org/docs/ProgrammersManual.html)
3. Pascal Junod, Julien Rinaldini, Johan Wehrli, and Julie Michielin. 2015. Obfuscator-LLVM -- Software Protection for
   the Masses. In Proceedings of the 2015 IEEE/ACM 1st International Workshop on Software Protection (SPRO '15). IEEE
   Computer Society, USA, 3–9. https://doi.org/10.1109/SPRO.2015.10

---

```txt
---
Saket Upadhyay
Ph.D. Student,
Department of Computer Science,
SEAS, University of Virginia.
saketupadhyay.com

GPG PUBLIC KEY
1742 06DB 710F 9E4A 06F5 9DF1 7473 B3A4 59BA 0808
```
