#include <stdio.h>
#include "steps.h"
int num = 0;

int main(void) {
printf("Insira o número:");
scanf("%d",&num);

int valor = steps();

printf("resultado = %d\n", valor);
return 0;
}
