add_llvm_library(LLVMObfuscation
	matrix/MatUtils.cpp
	matrix/MatGen.cpp
	MatrixBranchProg.cpp
	CryptoUtils.cpp
	Substitution.cpp
	BogusControlFlow.cpp
	Utils.cpp
	SplitBasicBlocks.cpp
	Flattening.cpp
	)

add_dependencies(LLVMObfuscation intrinsics_gen)
