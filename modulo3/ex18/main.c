#include <stdio.h>
#include "sort_without_reps.h"


int *ptrsrc;
int *ptrdest;
int num;


int main(void) {
	
int loop;
int vec1[]= {2,2,1,5,3};
int vec2[5] = {0};
num = 5;
ptrsrc = &vec1[0];
ptrdest = &vec2[0];
printf("\nVetor antes das alterações\n");
 for(loop = 0; loop < num; loop++){
      printf("%d ", vec1[loop]);
      };

int valor = sort_without_reps();
printf("\nVetor depois das alterações\n");
 for(loop = 0; loop < valor; loop++){
      printf("%d ", vec2[loop]);
      };
      printf("\n");

return 0;
}

