#include <stdio.h>
#include "str_copy_porto2.h"

char *ptr1;
char *ptr2;

int main(void) {
char vec[] = "VIVA O PORTO! viva o porto!";
ptr1 = &vec[0];
char vec2[] = {'\0'};
ptr2 = &vec2[0];

printf("\n antes\n");
printf("%s\n", vec);
str_copy_porto2();
printf("\n depois\n");
printf("%s\n", vec2);
return 0;

}
