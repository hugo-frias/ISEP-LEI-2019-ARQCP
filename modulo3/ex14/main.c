#include <stdio.h>
#include "exists.h"

short int x;
short int *ptrvec;
int num;


int main(void) {
int loop;
short int vec[]= {1,2,3,4,1,2};
num = 6;
ptrvec = &vec[0];
printf("\nvetor: \n");
 for(loop = 0; loop < num; loop++){
      printf("%d ", vec[loop]);
      };
     
int duplos = vec_diff();
printf("\nquantidade de duplos: %d \n", duplos);

return 0;
}

