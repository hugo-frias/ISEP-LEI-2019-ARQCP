#include <stdio.h>
#include "inc_and_square.h"
	int *v1;
	int v2;
int main(void) {
	int x;
	printf("Valor de v1:");
	scanf("%d",&x);
	v1 = &x;
	printf("Valor de v2:");
	scanf("%d",&v2);	
	
	int res = inc_and_square(v1,v2);
	printf("inc v1 = %d\n", *v1);
	printf("square v2= %d\n",res);

return 0;
}
