/*
 * método que ordena um array por ordem crescente
 */

#include <stdio.h>

void array_sort2(int *vec, int n){
	int i, j, aux;
	int* Ptr = vec;
	for(i = 0; i<n; ++i){
		for(j = i+1; j<n; ++j){
			if(Ptr[i]>Ptr[j]){
				aux = Ptr[i];
				Ptr[i] = Ptr[j];
				Ptr[j]=aux;
			}			
		}
	}
	
}

