/*
	Método que soma todos os valores pares encontrados num array.
	Recebe como parametro o address do array e o número de elementos do mesmo
 */


#include <stdio.h>

int sum_even( int *p, int num){
	int i;
	int sum = 0;		
	for(i = 0; i<num; i++){
		if(p[i] % 2 == 0){
			sum += p[i];
		}
	}
	return sum;
}

