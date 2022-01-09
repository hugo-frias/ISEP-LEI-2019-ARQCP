/*
 * método que soma os números impares de um array
 * recebe por parâmetro o address do array
 */

#include <stdio.h>

int odd_sum(int *p){
	int* Ptr = p;
	int n = Ptr[0];
	int sum = 0;
	int i;
	for(i=1; i<n+1;i++){
		if( Ptr[i] % 2 != 0){
			sum += Ptr[i];
		}
	}
	return sum;	
}
