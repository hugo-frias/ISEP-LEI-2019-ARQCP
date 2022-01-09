
#include <stdio.h>
#include "check.h"
#include "populate.h"
#include "inc_nsets.h"
int nsets=0; 
int main(int argc, char **argv)
{		
	int limit =20;
	int num=100;
	int vec[num];
	int i;

	populate(vec, num, limit);
	for(i=0; i<100;i++){
		int chk =check(vec[i],vec[i+1],vec[i+2]);
		if(chk==1){
			inc_nsets();
			}
		}
		printf("%d\n",nsets);
	return 0;
}
