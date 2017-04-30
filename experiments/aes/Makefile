CC = ~/BiOpq/build/bin/clang

all: aes 

aes: aes.o
	$(CC) aes.o -o aes

aes.o: aes.c
	$(CC) -Wall -DTEST_VECTORS -c aes.c -o aes.o

clean:
	- rm -rf *.o aes 
