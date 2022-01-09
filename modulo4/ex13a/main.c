#include <stdio.h>
#include "activate_bits.h"

	int a,left,right;

int main(void) {
	a=1234;
	left=2;
	right=2;
	int res = activate_bits(a,left,right);
	printf ("%d\n", res);
return 0;
}
