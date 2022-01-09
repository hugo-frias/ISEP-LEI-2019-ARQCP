#include <stdio.h>
#include <string.h>
#include "fill_s2.h"
#include "s2.h"


int main( void ){
int i;
s2 s;
short vw[3] = {1,2,3};
int vj = 0;
char vc[3] = {'a','b','c'};



fill_s2(&s, vw, vj, vc);

printf("\nw= \n");
	for(i = 0; i<3; i++){
		printf("  %hi\n", s.w[i]);
	}
	printf("j = %d\n",s.j);
	printf("c= \n");
	for(i = 0; i<3; i++){
		printf("  %c\n", s.c[i]);
	}
	
return 0;
}


