/*
 * Método que capitaliza todas as letras num dado array
 * Recebe por parametro o address do array.
 * Realizado usando pointer arithmetics
 */


#include <stdio.h>
#include "vecLength.h"

void upper2(char *str){
	int i;
	char* Ptr = &str[0];
	int n = vecLength(str);
	for(i = 0; i<n+1;i++){
		if('a'<= Ptr[i] && Ptr[i]<= 'z'){
			Ptr[i] -= 'a'-'A';
						
			}
	}
}




