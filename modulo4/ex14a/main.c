#include <stdio.h>
#include "join_bits.h"

int a;
int b;
int pos;

int main(void) {
	int a = 2;
	int b = 45;
	int pos = 4;
	
	int new = join_bits(a,b,pos);
	printf ("%d", new);
return 0;
}
