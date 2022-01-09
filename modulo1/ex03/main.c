/*
	Main do método sum_even
 */


#include <stdio.h>
#include "sum_even.h"


int main(int argc, char **argv)
{
	int vec[5] = {1,2,2,3,4};
	int *p = &vec[0];
	int num = 5;
	printf("The sum of the even numbers is: %d \n.",sum_even(p,num));
	return 0;
}

