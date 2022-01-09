/*
 * main do método "upper2"
 */



#include <stdio.h>
#include "upper2.h"

void upper2(char *str);

int main(int argc, char **argv)
{
	char frase[6] = "frase";
	printf("A frase em minusculas é: %s \n",frase);
	upper2(frase);
	printf("A frase em maiúsculas é: %s \n",frase);
	return 0;
}


