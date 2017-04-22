
CC = ~/BiOpq/build/bin/clang

all: des 

des: des.o
	$(CC) $< -o $@ 

des.o: des.c
	$(CC) -c $< -o $@ 

clean:
	- rm -rf *.o des 
