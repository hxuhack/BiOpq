#include<sys/time.h>
#include<time.h>

int main(int argc, char** argv){
  long a1[5], a2[5];
  a1[0] = 0;
  a1[1] = 1;
  a1[2] = 2;
  a1[3] = 3;
  a1[4] = 4;

  a2[0] = 0;
  a2[1] = 1;
  a2[2] = 2;
  a2[3] = 3;
  a2[4] = 4;

  long div = 5;
  if(a2[a1[argc%div]]!=div){
	printf("true\n"); 
  }
}
