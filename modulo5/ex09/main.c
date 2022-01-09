#include <stdio.h>
#include <string.h>
#include "structA.h"
#include "structB.h"

int main( void ){

structA sA;
structB sB;

sA.x = 1;
sA.y = 4;

sB.a = sA;
sB.b = &sA;
sB.x = 3;
sB.c = 't';
sB.y = 1;
sB.z = 5;
sB.e[0] = 'a';
sB.e[1] = 'b';
sB.e[2] = 'c';


short aux = fun1(&sB);
short aux2 = fun2(&sB);
short* aux3 = fun3(&sB);
short aux4 = fun4(&sB);
int aux5 = fun5(&sB);
printf("\n%hi",aux);
printf("\n%hi",aux2);
printf("\n%p", aux3);
printf("\n%hi",aux4);	
printf("\n%d", aux5);
return 0;
}
