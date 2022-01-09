#include <stdio.h>
#include "algoritmo.h"
int n;
int i;


int main(void) {
do{
printf("Insira o valor do i:");
scanf("%d",&i);

printf("Insira o valor do n:");
scanf("%d",&n);


if(i>n){
	printf("O valor de i é superior ao n! \n");
}
}while (i>n);

int valor = algoritmo();

printf("resultado = %d\n", valor);
return 0;
}

