#include <stdio.h>
#include "str_copy_porto.h"

char *ptr1;
char *ptr2;

int main(void) {

char vec[] = "viva o Porto!";
ptr1 = &vec[0];
char vec2[] = {'\0'};
ptr2 = &vec2[0];

printf("\n antes\n");
printf("%s\n", vec);
str_copy_porto();
printf("\n depois\n");
printf("%s\n", vec2);
return 0;
}
