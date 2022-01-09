#include <stdio.h>
#include "str_cat.h"

char *ptr1;
char *ptr2;
char *ptr3;


int main(void) {

char vec[7];
ptr3 = &vec[0];
char string1[] = "snow";
char string2[] = "ball";

ptr1 = &string1[0];
ptr2 = &string2[0];
printf("\nstring 1 :%s\n", string1);
printf("\nstring 2 :%s\n", string2);
str_cat();
printf("\njuntas dão:\n");
printf("%s \n", vec);
return 0;
}

