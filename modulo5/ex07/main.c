#include <stdio.h>
#include <string.h>
#include "fill_s1.h"
#include "s1.h"


int main( void ){
	
s1 s;

int vi = 2;
char vc = 'z';
int vj = 3;
char vd = 'w';

fill_s1(&s, vi, vc, vj, vd);
printf("\ni : %d\n"
           "c : %c\n"
           "j: %d\n"
           "d: %c\n\n", 
           s.i, s.c, s.j, 
           s.d);

return 0;
}


