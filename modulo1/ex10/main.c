/*
 * main do método "odd_sum"
 */


#include <stdio.h>
#include "odd_sum.h"

int main(int argc, char **argv)
{
	int vec[5] = {5,2,3,3,2};
	printf("A soma dos números impares é: %d", odd_sum(&vec[0]));
	return 0;
}

