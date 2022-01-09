#include <stdio.h>
#include "count_even.h"
	short *vec;
	int n;
int main(void) {
	
	short vetor []= {1,2,3,4,5,6};
	vec = &vetor[0];
	n =6;
	//n = sizeof(vetor)/sizeof(vetor[0]);
	
	int res = count_even(vec,n);
	printf("Numero de pares: %d\n", res);

return 0;
}
