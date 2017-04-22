#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

int64_t MultIntMatrix(int64_t** mat1, int64_t** mat2, int64_t** retMat, int64_t m1Height, int64_t m1Width, int64_t m2Height, int64_t m2Width, int64_t mod){
  if(m1Width != m2Height)
    return -1;
  /*
  printf("********Mat1*************\n");
  for(int64_t i=0; i < m1Height; i++){
    for(int64_t j=0; j < m1Width; j++){
	  printf("%d,", mat1[i][j]);
	}
	printf("\n");
  }
  printf("********Mat2*************\n");
  for(int64_t i=0; i < m2Height; i++){
    for(int64_t j=0; j < m2Width; j++){
	  int64_t ele = mat2[i][j];
	  printf("%d,", ele);
	}
	printf("\n");
  }
  printf("**********RetMat***********\n");
  */
  for(int64_t i=0; i < m1Height; i++){
    for(int64_t j=0; j < m2Width; j++){
	  int64_t ele = 0;
	  for(int64_t k=0; k < m1Width; k++){
		ele = (ele + mat1[i][k] * mat2[k][j]) % mod;
	  }
	  retMat[i][j] = ele;
	  //printf("%d,",ele);
	}
	//printf("\n");
  }
  return 0;
}

int main(int argc, char** argv){
	int64_t l1 = 2;
	int64_t l2 = 4;
	int64_t l3 = 6;
    int64_t ** matUnit = (int64_t **) malloc (sizeof(int64_t *) * l3);
	for(int64_t i=0; i< l3; i++){
		matUnit[i] = (int64_t*) malloc (sizeof(int64_t) * l3);
	}
    int64_t ** matUnit2 = (int64_t **) malloc (sizeof(int64_t *) * l3);
	for(int64_t i=0; i< l3; i++){
		matUnit2[i] = (int64_t*) malloc (sizeof(int64_t) * l3);
	}

	int64_t** mat[l1][l1];
	for(int64_t i=0; i< l1; i++){
		for(int64_t j=0; j<l2; j++){
			mat[i][j] = matUnit;
		}
	}

	MultIntMatrix(matUnit, mat[1][1], matUnit2, l3, l3, l3, l3, 1024);
}
