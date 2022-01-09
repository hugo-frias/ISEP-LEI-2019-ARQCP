#include <stdio.h>
#include "sum_first_byte.h"

int* ptrvec;
int num;

int main(void) {
	int sum[] = {12,-10,-20};
	num = sizeof(sum[1])/sizeof(sum[0]);
	ptrvec = &sum[0];
	printf("Soma de todos os primeiros bytes: %d\n", sum_first_byte());
	return 0;
	
}
