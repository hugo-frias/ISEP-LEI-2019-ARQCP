#include <stdio.h>
#include "getArea.h"
int base = 0;
int height = 0;

int main(void) {
printf("Insira a base:");
scanf("%d",&base);


printf("Insira a altura:");
scanf("%d",&height);

int valor = getArea();

printf("area = %d\n", valor);
return 0;
}
