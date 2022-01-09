#include <stdio.h>
#include "test_flags.h"
int op2=0, op1=0;

int main(void) {
		
	printf("\nInsira op1:");
	scanf("%d",&op1);
	printf("\nInsira op2:");
	scanf("%d",&op2);

	char valor = test_flags();
	printf("Valor da carry flag: %c: 0x%x\n", valor, valor);
	
	return 0;
}
