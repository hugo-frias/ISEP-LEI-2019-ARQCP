#include <stdio.h>
#include "isMultiple.h"
int A=0, B=0;

int main(void) {
		
	printf("\nInsira A:");
	scanf("%d",&A);
	printf("\nInsira B:");
	scanf("%d",&B);

	char valor = isMultiple();
	if(valor==0){
		printf("\n%d não é multiplo de %d\n", A, B);
	}
	if(valor==1){
		printf("\n%d é multiplo de %d\n", A, B);
	}
	return 0;
}
