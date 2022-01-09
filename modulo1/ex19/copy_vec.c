/*
	Método que copia os valores de um vetor/array para outro.
	Recebe como parametros os dois addresses dos vetores.
 */


#include <stdio.h>

void copy_vec(char *vec1, char *vec2, int n)
{
	int i;
	for(i=0;i<n;i++){
		vec2[i] = vec1[i];		
	}
	
}

