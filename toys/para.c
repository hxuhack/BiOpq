#include <unistd.h> 

int main(int argc, char** argv){
    int i, j = atoi(argv[1]);
    int pid, fd[2];
    pipe(fd);
    if((pid=fork())==-1)
	  return -1;
    if(pid == 0){//child process
      close(fd[0]);
	  char tmp[20];
	  sprintf(tmp,"%d",j);
      write(fd[1],tmp,sizeof(tmp));
	  exit(0);
    }
    else{
      close(fd[1]);
	  char receive[20];
      read(fd[0], receive, 20);
	  i = atoi(receive);
    }
	if(i != j){
	  printf("Bogus\n");
	}
	if(i == 7){
	  printf("Foo\n");
    }
	printf("Bar\n");
}
