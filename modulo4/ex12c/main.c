#include <stdio.h>
#include "activate_2bits.h"

int pos;
int* ptr;

int main(void) {
	int x = 3;
	ptr = &x;
	pos = 10;
	activate_2bits(ptr, pos);
return 0;
}
