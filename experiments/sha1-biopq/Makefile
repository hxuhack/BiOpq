CC = ~/BiOpq/build/bin/clang

all: sha1 

sha1: main.o sha1.o rtlib.o
	$(CC) main.o sha1.o rtlib.o -lpthread -o $@ 

sha1.o: sha1.c
	$(CC) -Wall -DTEST_VECTORS -c $< -mllvm -bcf -mllvm -boguscf-prob=6 -mllvm -OpqType=5 -mllvm -OpqNum=1

main.o: main.c
	$(CC) -Wall -DTEST_VECTORS -c $< -mllvm -bcf -mllvm -boguscf-prob=6 -mllvm -OpqType=10 -mllvm -OpqNum=7

rtlib.o: rtlib.c
	$(CC) -c rtlib.c -o rtlib.o

clean:
	- rm -rf *.o sha1 
