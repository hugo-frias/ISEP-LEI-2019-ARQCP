#include <stdio.h>
#include "activate_bit.h"

int pos;
int* ptr;

int main(void) {
	int x = 3;
	ptr = &x;
	pos = 10;
	int res = activate_bit(ptr, pos);
	printf ("%d", res);
return 0;
}
