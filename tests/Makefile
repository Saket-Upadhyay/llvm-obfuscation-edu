# Define variables
SOURCE = ObfuscationTest.cpp
FINALBINARY= obfuscatedbinary
PASSSELECTOR= 1


# Define targets
.PHONY: clean all run clangbuild instrument bitcodetobinary dis odump

all: clean symlinktool clangbuild obfuscate bitcodetobinary  dis odump

clean:
	rm -f *.o *.bc obfuscatedbinary originalbinary *.ll *.asm ObfuscationTool *.csv

symlinktool:
	ln -s ../build/src/llvmobfuscator ObfuscationTool

run: all
	./$(FINALBINARY)

clangbuild: $(SOURCE)
	clang++ -O0 -g -c -emit-llvm -o originalbinary.bc $(SOURCE)

obfuscate: clangbuild
	./ObfuscationTool originalbinary.bc $(FINALBINARY).bc $(PASSSELECTOR)

bitcodetobinary: obfuscate
	llc -filetype=obj --relocation-model=pic  -o $(FINALBINARY).o $(FINALBINARY).bc
	clang++ -O0 -g $(FINALBINARY).o -o $(FINALBINARY)
	llc -filetype=obj --relocation-model=pic  -o originalbinary.o originalbinary.bc
	clang++ -O0 -g originalbinary.o -o originalbinary

dis: obfuscate
	llvm-dis *.bc

# Check whether required programs exist in execution environment.
ODUMP := $(shell command -v objdump 2>/dev/null)
LLVMODUMP := $(shell command -v llvm-objdump 2>/dev/null)
odump:

ifdef ODUMP
	echo "Found objdump. Using that to produce asm."
	objdump -d obfuscatedbinary >obfuscatedbinary.asm
	objdump -d originalbinary >originalbinary.asm
else ifdef LLVMODUMP
	echo "Found llvm-objdump. Using that to produce asm."
	llvm-objdump -d obfuscatedbinary >obfuscatedbinary.asm
	llvm-objdump -d originalbinary >originalbinary.asm
else
	echo >&2 "objdump or llvm-objdump not found. Not producing asm."
endif
