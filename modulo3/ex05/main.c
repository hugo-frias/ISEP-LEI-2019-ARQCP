#include <stdio.h>
#include "vec_sum_avg.h"

int *ptrvec;
int num=0;
int sum;
int avg;

int main(void) {
	int vec[] = {-10,2,2,3,3};
	num = sizeof(vec[0])/sizeof(vec);
	ptrvec = &vec[0];
	sum = vec_sum();
	printf("soma do vetor = %d\n", sum);
	avg = vec_avg();
	printf("média do vetor = %d\n",avg);
	return 0;
}
