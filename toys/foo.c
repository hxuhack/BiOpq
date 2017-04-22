#include<sys/time.h>
#include<time.h>

long GetSecSince1970(){
   struct timeval tv;
   gettimeofday(&tv, NULL);
   printf("Seconds since 1970: %ld\n", tv.tv_sec);
   return tv.tv_sec;
}
int main(int argc, char** argv){
  long start = GetSecSince1970();
  for(int i=0; i< 100000; i++){
  
    //printf("i = %d\n", i);
  }
  long end = GetSecSince1970();
  printf("%ld-%ld = %ld\n", end, start, end-start);
}
