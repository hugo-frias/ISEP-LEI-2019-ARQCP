#include <stdio.h>

int join_bits(int a, int b, int pos) {
	int count = 0, new = 0;


	while (count <= pos){			// enquanto o contador nao tiver chegado á posição por parâmetro...
		if( a & (1 << count)){		// verifica se o bit na posição count de A está ativo atraves de um and
			new ^= (1 << count); }	// se estiver, vai ser ativo no número new atraves de um xor
		count++;					// aumenta o contador
	}	
	while (count < 32){				// enquanto o contador nao chegar a 32...
		if( b & (1 << count)){		// verifica se o bit na posição count de B está ativo atraves de um and
			new ^= (1 << count); }	// se estiver, vai ser ativo no número new atraves de um xor
		
		count++;					// aumenta o contador
	}
	return new;
}


