#include <unistd.h> 

int main(int argc, char** argv){
    int pid, fd[2], j = atoi(argv[1]);
    pipe(fd);
    if((pid=fork())==-1)
	return -1;
    if(pid == 0){
        close(fd[0]);
	char tmp[16];
	sprintf(tmp,"%d",++j);
        write(fd[1],tmp,sizeof(tmp));
	wait(NULL);
    }
    else{
	char content[2];
        close(fd[1]);
        read(fd[0],content,1);
 	content[1] = '\0';
	printf("%s\n", content);
        if(strcmp(content,"100")==0){
	    printf("bogus\n");
	}
        if(strcmp(content,"1")==0){
            printf("bogus\n");
        }
    }
}
