/*
	Método que copia os valores de um vetor/array para outro.
	Recebe como parametros os dois addresses dos vetores, e o tamanho dos mesmos.
 */


#include <stdio.h>

void copy_vec(int *vec1, int *vec2, int n)
{
	int i;
	int* Ptr = &vec1[0];
	for(i=0;i<n;i++){
		vec2[i] = *(Ptr+i);		
	}
	
}

