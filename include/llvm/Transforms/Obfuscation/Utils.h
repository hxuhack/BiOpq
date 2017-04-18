#ifndef __UTILS_OBF__
#define __UTILS_OBF__

#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Transforms/Utils/Local.h" // For DemoteRegToStack and DemotePHIToStack
#include <vector>
#include <list>
#include <stdio.h>

using namespace llvm;
using namespace std;

void fixStack(Function *f);
std::string readAnnotate(Function *f);
bool toObfuscate(bool flag, Function *f, std::string attribute);

void PrintIR(llvm::Function *);
void PrintIR(list<llvm::Instruction*>);
void PrintInIR(llvm::Module&, llvm::BasicBlock*, const char*, int64_t, llvm::Value*);

extern IntegerType *boolType, *i8Type, *i32Type, *i64Type;
extern PointerType *i64PT, *ptrPT, *ptrPPT, *ptrPPPT;
extern ConstantInt *ci0, *ci1;
extern vector<Value*> vec00,vec01;

extern llvm::Constant *printFunc, *mallocFunc, *multMatFunc, *multArMatFunc; 

#endif
