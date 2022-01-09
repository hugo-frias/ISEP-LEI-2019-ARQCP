#include <stdio.h>
#include "vec_search.h"

short int* ptrvec;
short int x=4;
int num;
int main(void) {
	short int shorts[] = {1,2,3,4,5};
	num = 5;
	ptrvec = &shorts[0];
	printf("endereço da ocorrencia do numero %hu: = 0x%p\n",x, vec_search() );
	return 0;
	
}
