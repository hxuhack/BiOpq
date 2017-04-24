CC = ~/BiOpq/build/bin/clang

all: hmac

hmac: hmac_sha2.o sha2.o rtlib.o
	$(CC) sha2.o hmac_sha2.o rtlib.o -o hmac

hmac_sha2.o: hmac_sha2.c hmac_sha2.h
	$(CC) -Wall -DTEST_VECTORS -c hmac_sha2.c -o hmac_sha2.o -mllvm -bcf -mllvm -boguscf-prob=10 -mllvm -OpqType=2 -mllvm -OpqNum=10 

sha2.o: sha2.c sha2.h
	$(CC) -c sha2.c -o sha2.o -mllvm -bcf -mllvm -boguscf-prob=10 -mllvm -OpqType=2 -mllvm -OpqNum=10 

rtlib.o: rtlib.c
	$(CC) -c $<

clean:
	- rm -rf *.o hmac
