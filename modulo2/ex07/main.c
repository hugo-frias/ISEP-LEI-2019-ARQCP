#include <stdio.h>
#include "asm.h"
char byte1='a';
char byte2='b';
short s1 = 0;
short s2 = 0;

int main(void) {
printf("ex7: Insira um short:");
scanf("%hd",&s1);
printf("ex7: Insira um short:");
scanf("%hd",&s2);

//short valor = swapBytes();
//short valor2 = concatBytes();
short valor3 = crossSumBytes();
printf("crossSumBytes = %hd\n", valor3);
return 0;
}
