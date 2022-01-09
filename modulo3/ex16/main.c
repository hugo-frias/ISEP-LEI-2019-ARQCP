#include <stdio.h>
#include "swap.h"


char *ptr1;
char *ptr2;
int num;


int main(void) {

char vec1[]= "abcd";
char vec2[]= "fghj";
num = 4;
ptr1 = &vec1[0];
ptr2 = &vec2[0];
printf("\n antes: \n%s\n", vec1);
printf("%s\n", vec2);
swap();
printf("\n depois: \n%s\n", vec1);
printf("%s\n", vec2);
return 0;
}

