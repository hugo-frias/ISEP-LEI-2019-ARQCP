#include <stdio.h>
#include "decrypt.h"

char *ptr1;

int main(void) {
	char string[] = {'a','d','c','d'};
	ptr1 = &string[0];
	int count = encrypt();
	printf("numero de alterações = %d\n",count);
	int count1 = decrypt();
	printf("numero de alterações = %d\n",count1);
	return 0;
	
}
