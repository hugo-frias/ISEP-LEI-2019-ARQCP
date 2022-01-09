#include <stdio.h>
#include "zero_count.h"

char *ptr1;
char ending;
char zero;
int main(void) {

char vec[] = {'0','s','0','s'};
 ptr1 = &vec[0];
int valor = zero_count();
printf("zero_count = %d\n", valor);
return 0;
}
