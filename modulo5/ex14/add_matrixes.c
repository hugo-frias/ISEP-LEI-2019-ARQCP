#include <stdio.h>	
#include <stdlib.h> 
#include "new_matrix.h"

int **add_matrixes(int **a, int **b, int y, int k){
	int **m;
	
	m = new_matrix(y,k);
	int i,j;
	
	for(j = 0 ; j < y ; j++) {
        for(i = 0 ; i < k ; i++){
             m[i][j]=a[i][j]+b[i][j];
        }
    }
    
	return m;
}
