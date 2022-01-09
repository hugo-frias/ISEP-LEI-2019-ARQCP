#include <stdio.h>
#include "vec_count_bits_zero.h"

	int x[] = {1,2,3,4};
	

int main(void) {
	
	
	int res = vec_count_bits_zero(&x[0], 4);
	printf ("%d", res);
return 0;
}
