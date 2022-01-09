#include <stdio.h>
#include "count_bits_zero.h"

	int x;
	

int main(void) {
	x = 3;
	
	
	int res = count_bits_zero(x);
	printf ("%d", res);
return 0;
}
