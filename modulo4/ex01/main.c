#include <stdio.h>
#include "cube.h"
	int x;
int main(void) {

	printf("Valor:");
	scanf("%d",&x);
	int res =cube(x);
	printf("cube of number %d = %d", x,res);

return 0;
}
