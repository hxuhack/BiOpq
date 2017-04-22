CC = ~/BiOpq/build/bin/clang

all: mbp 

mbp: foo.o rtlib.o
	$(CC) $< -o $@ 

foo.o: foo.c
	$(CC) -c $< -mllvm -bcf

rtlib.o: rtlib.c
	$(CC) -c $<
	
clean:
	- rm -rf *.o mbp 
