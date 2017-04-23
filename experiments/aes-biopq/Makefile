CC = ~/BiOpq/build/bin/clang

all: aes 

aes: aes.o rtlib.o
	$(CC) aes.o rtlib.o -o aes

aes.o: aes.c
	#$(CC) aes.c -o aes.o
	$(CC) -Wall -DTEST_VECTORS -c $< -mllvm -bcf -mllvm -boguscf-prob=10 -mllvm -OpqType=100 -mllvm -OpqNum=1 

rtlib.o: rtlib.c
	$(CC) -c rtlib.c -o rtlib.o
	
clean:
	- rm -rf *.o aes 
