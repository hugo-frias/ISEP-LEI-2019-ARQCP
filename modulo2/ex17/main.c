#include <stdio.h>
#include "calculator.h"
int A=0, B=0;

int main(void) {
		
	printf("\nInsira A:");
	scanf("%d",&A);
	printf("\nInsira B:");
	scanf("%d",&B);

	valor = sum();
	printf("\n%d + %d = %d", A, B, valor);
	
	valor = subtraction();
	printf("\n%d - %d = %d", A, B, valor);
	
	valor = multiplication();
	printf("\n %d x %d = %d", A, B, valor);	
	
	valor = division();
	printf("\n %d / %d = %d", A, B, valor);

	valor = modulus();
	printf("\n |%d| = %d", A, valor);
		
	valor = powers2();
	printf("\n%d elevado a 2 = %d", A, valor);
	
	valor = powers3();
	printf("\n%d elevado a 3 = %d\n", A, valor);
	return 0;
}
