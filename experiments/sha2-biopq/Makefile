CC = ~/BiOpq/build/bin/clang

all: sha2

sha2: sha2.o rtlib.o
	$(CC) $< -o $@

sha2.o: sha2.c sha2.h
	$(CC) -DTEST_VECTORS -c $< -mllvm -bcf

rtlib.o: rtlib.c
	$(CC) $< -o $@

clean:
	-rm -rf *.o sha2

