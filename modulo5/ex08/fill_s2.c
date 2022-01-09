#include <stdio.h>
#include "s2.h"

void fill_s2(s2 *s, short vw[3], int vj, char vc[3]){
int i;
s -> j = vj;
for(i = 0; i<3; i++){
	s -> w[i] = vw[i];
	s -> c[i] = vc[i];	
}

}



