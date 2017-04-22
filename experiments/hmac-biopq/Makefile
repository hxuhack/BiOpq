CC = ~/BiOpq/build/bin/clang

all: hmac

hmac: rtlib.o hmac.o sha2.o
	$(CC) sha2.o hmac.o -o hmac

hmac.o: hmac_sha2.c hmac_sha2.h
	$(CC) -Wall -DTEST_VECTORS -c hmac_sha2.c -o hmac.o -mllvm -bcf

sha2.o: sha2.c sha2.h
	$(CC) -c sha2.c -o sha2.o -mllvm -bcf
rtlib.o: rtlib.c
	$(CC) -c rtlib.c -o rtlib.o

clean:
	- rm -rf *.o hmac
