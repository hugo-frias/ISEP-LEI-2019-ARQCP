/*
 * main do método "frequencies"
 */

#include <stdio.h>
#include "frequencies.h"

int main(int argc, char **argv)
{	int i;
	float grades[] =  {8.23, 12.25, 16.45, 12.45, 10.05, 6.45, 14.45, 0.0, 12.67,
16.23, 18.75};
	int freq[21];
	int n =11;
	frequencies(&grades[0], n, &freq[0]);
	printf("notas:");
	for(i=0; i<20;i++){
		printf("\n%d : %d vezes",i,freq[i]);
	}
	return 0;
}

