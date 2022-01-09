#include <stdio.h>
#include "calc.h"

	int a;
	int *b;
	int c;

int main(void) {
	a = 2;
	c = 3;
	int d = 4;
	b = &d;
	
	
	int res = calc(a,b,c);
	printf ("%d", res);
return 0;
}
