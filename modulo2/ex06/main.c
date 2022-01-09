#include <stdio.h>
#include "asm.h"
char byte1;
char byte2;

int main(void) {
printf("Insira um byte:");
scanf("%c",&byte1);
printf("Insira um 2 byte:");
scanf("%c\n",&byte2);


short valor2 = concatBytes();
printf("\nconcatBytes = %hd\n", valor2);
return 0;
}
