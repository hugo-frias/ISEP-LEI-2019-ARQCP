/*
 * main do método "where_exists"
 */

#include <stdio.h>
#include "where_exists.h"

int main(int argc, char **argv)
{
	char str1[] = "um dois tres";
	char str2[] = "dois";
	printf("%p",where_exists(&str1[0], &str2[0]));
	return 0;
}

