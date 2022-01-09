#include <stdio.h>
#include "sum_and_subtract.h"
int A=0, B=0, C=0, D=0;

int main(void) {
		
	printf("\nInsira A:");
	scanf("%d",&A);
	printf("\nInsira B:");
	scanf("%d",&B);
	printf("\nInsira C:");
	scanf("%d", &C);
	printf("\nInsira D:");
	scanf("%d", &D);

	long long valor = sum_and_subtract();
	printf("C+A-D+B = %lld: 0x%x\n", valor, valor);
	
	return 0;
}
