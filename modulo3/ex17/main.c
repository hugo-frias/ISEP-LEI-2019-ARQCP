#include <stdio.h>
#include "array_sort.h"



int *ptrvec;
int num;


int main(void) {
int loop;

int vec1[]= {1,2,5,4,3,9,8,7};

num = 8;

ptrvec = &vec1[0];
printf("\nvetor antes: \n");
 for(loop = 0; loop < num; loop++){
      printf("%d ", vec1[loop]);
      };
array_sort();
printf("\nvetor depois: \n");
 for(loop = 0; loop < 8; loop++){
      printf("%d ", vec1[loop]);
      }
      

return 0;
}

