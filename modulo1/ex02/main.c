/*
	Main do método que copia os valores de um vetor/array para outro.
 */


#include <stdio.h>
#include "copy_vec.h"


int main(int argc, char **argv)
{
	int vec1[3] = {1,2,-3};
	int vec2[3] = {0,0,0};
	int n = 3;
	int i;
	
	copy_vec(vec1,vec2,n);
	for(i = 0; i<n; i++){
		printf("%d\n",vec2[i]);
	}
	
	return 0;
}

