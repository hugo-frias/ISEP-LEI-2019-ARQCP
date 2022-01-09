#include <stdio.h>



	

int count_bits_zero(int x) {
int res = 0, i;

for (i = 0; i<32; i++){
	if(!(x&1)){		//verifica se o bit está ativo com auxilio da mascara and
		res++;		// caso esteja, aumenta o resultado
	}
	x>>=1;			// move um bit para a direita
}
return res;
}
