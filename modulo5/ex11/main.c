#include <stdio.h>	
#include <stdlib.h> 
#include "new_matrix.h"
	
int main( void ){
	int m;
	int **a;
	int lines=5;
	int columns=5;
	int x,y;

	
	a = new_matrix(lines, columns);
	
    for(x = 0 ; x < lines ; x++) {
        printf(" (");
        for(y = 0 ; y < columns ; y++){
			a[x][y]=(x+1)*(y+1);
            printf("%d     ", a[x][y]);
        }
        printf(")\n");
    }
    
	for (m = 0; m < lines ; m ++){
		 free (*(a+m));
	}
	free (a);
return 0;
}
