#include <stdio.h>
	int INT_BITS= 32; 	//numero de bits de um inteiro


	int rotate_left(int num, int nbits) {
		num = (num << nbits) | num>>(INT_BITS - nbits);
		return num;
	}


	int rotate_right(int num, int nbits) {
		num = (num>>nbits) | num<<(INT_BITS - nbits);
		return num;
	}

