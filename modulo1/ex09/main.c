#include <stdio.h>
#include "sort_without_reps.h"

int main(int argc, char **argv)
{	
	int src[5]={5,2,3,3,4};
	int dest[5]={0};
	int n = sort_without_reps(&src[0], 5, &dest[0]);
	printf("foram colocados %d números no array: ", n);
	int i;
	for(i = 0; i<5; i++){
		printf("\n dest[%d] = %d", i, dest[i]);
	}
	return 0;
}
