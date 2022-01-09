#include <stdio.h>
#include "rotate.h"

	int num;
	int nbits;

int main(void) {
	num = 1234;
	nbits=2;
	
	int res = rotate_left(num,nbits);
	printf ("%d\n", res);
	res = rotate_right(num, nbits);
	printf("%d\n", res);
return 0;
}
