#include <stdio.h>
#include "check_num.h"
int num;

int main(void) {

printf("Insira o número a analisar:");
scanf("%d",&num);

int valor = check_num();

if(valor == 1){
	printf("O valor introduzido é par e negativo! \n");
} else if( valor == 2){
	printf("O valor introduzido é impar e negativo! \n");
} else if( valor == 3){
	printf("O valor introduzido é par e positivo! \n");
} else if( valor == 4){
	printf("O valor introduzido é impar e positivo! \n");
}

return 0;
}

