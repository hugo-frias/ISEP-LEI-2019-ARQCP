/*
	Método para imprimir vários valores relacionados com pointers
 */


#include <stdio.h>

int main(int argc, char **argv)
{
	int x = 5; 
	int* xPtr = &x; 
	float y = *xPtr + 3; 
	int vec[] = {10, 11, 12, 13};
	printf("The value of x is %d and y is %f \n", x, y);
	printf("The address (in hexadecimal) of x is %p and of xPtr is %p \n", &x, &xPtr);
	printf("The value pointed by xptr is %d \n", *xPtr);
	printf("The value of the address of vec is %p \n", &vec);
	printf("The values of the vector are: %d, %d, %d, %d \n", vec[0],vec[1],vec[2],vec[3]);
	printf("The values of the addresses of the vector: %p, %p, %p, %p \n", &vec[0], &vec[1], &vec[2], &vec[3]);
	
	
	return 0;
}

