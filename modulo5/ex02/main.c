#include <stdio.h>
#include <string.h>

int main( void ){
	struct struct_s1{
		char vec[32];
		float a;
		int b;
		} s;

struct struct_s1 * ptr = &s;

strcpy(ptr->vec, "arquitectura de computadores" );
printf( "[1]=%s\n", ptr->vec );

ptr->a = 123.5;
printf( "[2]=%f\n", ptr->a );

ptr->b = 2;
printf( "[3]=%d\n", ptr->b );
printf( "[1]=%s\n", ptr->vec );
printf( "[2]=%f\n", ptr->a );
printf( "[3]=%d\n", ptr->b );

union union_u1{
		char vec[32];
		float a;
		int b;
		} u;

union union_u1 * ptr2 = &u;

strcpy(ptr2->vec, "arquitectura de computadores" );
printf( "[1]=%s\n", ptr2->vec );

ptr2->a = 123.5;
printf( "[2]=%f\n", ptr2->a );

ptr->b = 2;
printf( "[3]=%d\n", ptr2->b );
printf( "[1]=%s\n", ptr2->vec );
printf( "[2]=%f\n", ptr2->a );
printf( "[3]=%d\n", ptr2->b );

return 0;
}
