CC = ~/BiOpq/build/bin/clang

all: des 

des: des.o rtlib.o
	$(CC) $< -o $@

des.o: des.c
	$(CC) -c $< -mllvm -bcf 

rtlib.o: rtlib.c
	$(CC) -c $<  

clean:
	- rm -rf *.o des 
