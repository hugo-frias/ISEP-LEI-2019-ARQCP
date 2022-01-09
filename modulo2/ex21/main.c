#include <stdio.h>
#include "new_salary.h"
int code=0, currentSalary=0;

int main(void) {
		
	printf("\nInsira o código:");
	scanf("%d",&code);
	printf("\nInsira o salário atual:");
	scanf("%d",&currentSalary);

	int valor = new_salary();
	printf("Salario novo:  %d: 0x%x\n", valor, valor);
	
	return 0;
}
