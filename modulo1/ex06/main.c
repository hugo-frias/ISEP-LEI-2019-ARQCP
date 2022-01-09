/*
 * main do método "power_ref"
 */


#include <stdio.h>
#include "power_ref.h"

int main(int argc, char **argv)
{
	int exponencial, base;
	base = 2;
	int* Ptr = &base;
	exponencial = 3;
	power_ref(Ptr, exponencial);
	printf("Resultado: %d\n",base);
	
	return 0;
}

