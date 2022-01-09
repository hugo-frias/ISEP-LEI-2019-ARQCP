/*
 * main do método "upper1"
 */


#include <stdio.h>
#include "upper1.h"

int main(int argc, char **argv)
{
	char frase[] = "Frase f";
	printf("A frase em minusculas é: %s \n",frase);
	upper1(frase);
	printf("A frase em maiúsculas é: %s \n",frase);
	return 0;
}

