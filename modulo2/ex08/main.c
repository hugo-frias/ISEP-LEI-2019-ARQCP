#include <stdio.h>
#include "asm.h"
char byte1;
char byte2;
short s1;
short s2;

int main(void) {

short valor3 = crossSumBytes();
printf("crossSumBytes = %hd\n", valor3);
return 0;
}
