#include <stdio.h>
#include "HotCold.h"
short current=0, desired=0;

int main(void) {
		
	printf("\nInsira a temperatura atual:");
	scanf("%hi",&current);
	printf("\nInsira a temperatura desejada:");
	scanf("%hi",&desired);

	int valor = HotCold();
	printf("Tempo necessario:  %d: 0x%x\n", valor, valor);
	
	return 0;
}
