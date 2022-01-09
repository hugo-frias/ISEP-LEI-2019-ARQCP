#include <stdio.h>

int main(void) {
	union union_u1{
		char vec[32];
		float a;
		int b;
	} u;
	struct struct_s1{
		char vec[32];
		float a;
		int b;
	} s;

	printf("size of s %d\n",sizeof(s));
	printf("size of u %d\n", sizeof(u));
	// o size é diferente porque numa struct dá me o size completo 
	// enquanto que na union da me o size da maior variavel
return 0;
}
