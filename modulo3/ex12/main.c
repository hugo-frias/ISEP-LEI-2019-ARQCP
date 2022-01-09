#include <stdio.h>
#include "vec_zero.h"	


short int *ptrvec;
int num;



int main(void) {
num = 6;
int loop;

short int ints[6] = {100,10,20,30,1000,300};

ptrvec = &ints[0];
printf("\nvetor antes: \n");
 for(loop = 0; loop < num; loop++){
      printf("%d ", ints[loop]);
      };
int aux = vec_zero();
printf("\nvetor depois: \n");
 for(loop = 0; loop < num; loop++){
      printf("%d ", ints[loop]);
      };
printf ("\nnúmero de elementos alterados: %d \n", aux);

return 0;
}

