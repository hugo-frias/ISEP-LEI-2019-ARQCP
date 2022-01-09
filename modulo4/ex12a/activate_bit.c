#include <stdio.h>

int activate_bit(int *ptr, int pos) {
	int x = *ptr;
	x>>=pos;
	if (!(x&1)){				// verifica se o bit está ativo com o auxilio de uma mascara and
		*(ptr) ^= (1 << pos);	// caso não estejam vai ativa-lo com o auxilio de uma mascara xor
		return 1;
	} else{
	return 0;}
}
