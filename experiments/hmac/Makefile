all: hmac

hmac: hmac_sha2.o sha2.o
	$(CC) sha2.o hmac_sha2.o -o hmac

hmac_sha2.o: hmac_sha2.c hmac_sha2.h
	$(CC) -Wall -DTEST_VECTORS -c hmac_sha2.c -o hmac_sha2.o

sha2.o: sha2.c sha2.h
	$(CC) -c sha2.c -o sha2.o

clean:
	- rm -rf *.o hmac
