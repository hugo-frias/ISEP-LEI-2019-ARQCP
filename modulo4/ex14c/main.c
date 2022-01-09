#include <stdio.h>
#include "mixed_sum.h"

int a;
int b;
int pos;

int main(void) {
	int a = 0;
	int b = 1;
	int pos = 0;
	
	int new = mixed_sum(a,b,pos);
	printf ("%d", new);
return 0;
}
