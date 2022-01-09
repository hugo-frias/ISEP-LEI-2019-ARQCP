/*
 * main do método "capitalize"
 */


#include <stdio.h>
#include "capitalize.h"

int main(int argc, char **argv)
{	int i = 0;
	char str[] = "Um dois três quatro";
	capitalize(&str[0]);
	return 0;
}

