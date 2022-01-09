#include <stdio.h>
#include "sum_smaller.h"

	int *smaller; 
	int num1;
	int num2;
int main(void) {
	num1 = 2;
	num2 = 4;
	int x;
	smaller = &x;
	int sum = sum_smaller(num1, num2, smaller);
		

	printf("smaller = %d\n", *smaller);
	printf("sum = %d\n",sum);

return 0;
}
