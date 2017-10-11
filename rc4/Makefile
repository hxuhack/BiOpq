CC = ~/BiOpq/build/bin/clang

OBJS=test.o

rc4:$(OBJS)
	$(CC) $(OBJS) -o rc4 

test.o:test.c
	$(CC) -c test.c -o test.o

clean:
	rm -rf *.o test
