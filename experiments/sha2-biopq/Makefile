CC = ~/BiOpq/build/bin/clang

all: sha2

sha2: sha2.o rtlib.o
	$(CC) sha2.o rtlib.o -o $@ 

sha2.o: sha2.c sha2.h
	$(CC)  -Wall -DTEST_VECTORS -c sha2.c -o sha2.o -mllvm -bcf -mllvm -boguscf-prob=10 -mllvm -OpqType=100 -mllvm -OpqNum=10

rtlib.o: rtlib.c
	$(CC) -c $< 

clean:
	-rm -rf *.o sha2

