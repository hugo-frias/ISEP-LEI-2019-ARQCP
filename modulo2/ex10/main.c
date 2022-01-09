#include <stdio.h>
#include "sum2ints.h"
int op1=0;
int op2=0;

int main(void) {
printf("Insira um inteiro:");
scanf("%d",&op1);

printf("Insira um inteiro:");
scanf("%d",&op2);

long valor = sum2ints();
printf("sum2ints = %ld\n", valor);
return 0;
}
