CC = ~/BiOpq/build/bin/clang

all: md5 

md5: md5.o 
	$(CC) md5.o -o md5

md5.o: md5.c
	#$(CC) md5.c -o md5.o
	$(CC) -Wall -DTEST_VECTORS -c $< 

clean:
	- rm -rf *.o md5 
