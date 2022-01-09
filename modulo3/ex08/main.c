#include <stdio.h>
#include "vec_sum_even.h"

int *ptrvec;
int num;
int even;

int main(void) {
int loop;
int vec[] = {1,2,3,4};
ptrvec = &vec[0];
num = 4;
printf("\nvetor: \n");
 for(loop = 0; loop < num; loop++){
      printf("%d ", vec[loop]);
      };
int total = vec_sum_even();
printf("\ntotal da soma dos pares: %d \n", total);
return 0;
}
