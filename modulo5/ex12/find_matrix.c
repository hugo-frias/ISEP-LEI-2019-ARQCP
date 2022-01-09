#include <stdio.h>	
#include <stdlib.h> 

int find_matrix(int **m, int y, int k , int num){
	int i,j;
	
	for(j = 0 ; j < y ; j++) {
        for(i = 0 ; i < k ; i++){
             if(m[j][i]==num)return 1;
        }
    }
    	
	return 0;
}

