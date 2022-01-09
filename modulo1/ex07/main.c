#include <stdio.h>
#include "array_sort1.h"

int main(int argc, char **argv)
{
	int i,j;
	int vec[]={2,1,1,1,1,1,1,1,1};
	int n = sizeof(vec)/sizeof(vec[0]);
	printf("Vetor antes da ordenação\n");
	for( i = 0; i<n; i++){		
		printf(" %d ",vec[i]);
	}
	array_sort1(vec, n);
	printf("\nVetor depois da ordenação\n");
	for( j = 0; j<n; j++){		
		printf(" %d ",vec[j]);
	}
	return 0;
}

