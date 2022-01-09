#include <stdio.h>
#include "asm.h"
short s=0;

int main(void) {
printf("Insira um short:");
scanf("%hd",&s);

short valor = swapBytes();
printf("swapBytes = %hd\n", valor);
return 0;
}
