#include <stdio.h>
#include "vec_add_one.h"

int *ptrvec;
int num;
int main(void) {
int loop;
int vec[] = {0,1,2,3};
num = 4;
ptrvec = &vec[0];
printf("\n antes \n");
 for(loop = 0; loop < num; loop++){
      printf("%d ", vec[loop]);
      };
vec_add_one();
printf("\n depois \n");
 for(loop = 0; loop < num; loop++){
      printf("%d ", vec[loop]);
      };
//printf("zero_count = %d\n", valor);
return 0;
}
