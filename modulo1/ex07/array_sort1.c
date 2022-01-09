#include <stdio.h>

void array_sort1(int *vec, int n){
	int i, j, aux;
	for(i = 0; i<n; ++i){
		for(j = i+1; j<n; ++j){
			if(vec[i]>vec[j]){
				aux=vec[i];
				vec[i]=vec[j];
				vec[j]=aux;
			}
		}
	}
}
