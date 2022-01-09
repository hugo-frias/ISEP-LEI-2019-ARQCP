#include <stdio.h>
#include "greatest.h"
	int a,b,c;
int main(void) {

	printf("Valor de A:");
	scanf("%d",&a);
	printf("Valor de B:");
	scanf("%d",&b);	
	printf("Valor de C:");
	scanf("%d",&c);	
	int res =greatest(a,b,c);
	printf("greatest = %d\n", res);

return 0;
}
