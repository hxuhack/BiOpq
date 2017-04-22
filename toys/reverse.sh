~/BiOpq/build/bin/clang -S -emit-llvm -c $1 -o foo.ll
~/BiOpq/build/bin/llc -march=cpp foo.ll -o foo.cpp
