#include <stdio.h>
#include "test_equal.h"

	char *a; 
	char *b; 
int main(void) {
	char c1[] = "arqcp";
	char c2[] = "arqcp";
	a = &c1[0];
	b = &c2[0];

	int res = test_equal(a, b);
	printf ("%d", res);
return 0;
}
