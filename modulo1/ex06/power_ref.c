/*
 * método que calcular a potencia de um dado número
 * recebe por parâmetro a base e o expoente.
 *	
 */


#include <stdio.h>

void power_ref(int* x, int y){	
	int i;
	int resultado = 0;
	int base = *x;
	if(y>=0){
		resultado = 1;
		for (i = 0; i<y;i++){
			resultado *= base;
		}
		*x = resultado;
	} else{
		*x = 0;
	}
}

