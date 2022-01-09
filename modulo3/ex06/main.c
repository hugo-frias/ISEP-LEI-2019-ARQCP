#include <stdio.h>
#include "encrypt.h"

char *ptr1;

int main(void) {
	char string[] = {'a','d','c','d'};
	ptr1 = &string[0];
	int count = encrypt();
	printf("numero de alterações = %d\n",count);
	return 0;
}
