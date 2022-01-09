#include <stdio.h>	
#include <stdlib.h> 
#include "new_matrix.h"
#include "find_matrix.h"
	
int main( void ){
	int **m;
	int lines=5;
	int columns=5;
	int x,y,i;
		
	m = new_matrix(lines, columns);
	
    for(x = 0 ; x < lines ; x++) {
        printf(" (");
        for(y = 0 ; y < columns ; y++){
			m[x][y]=(x+2)*(y+2);
            printf("%d     ", m[x][y]);
        }
        printf(")\n");
    }
    
    int num = 4;
    
    int res = find_matrix(m,lines,columns,num);
    printf("resultado: %d", res);
	for (i = 0; i < lines ; i ++){
		 free (*(m+i));
	}
	free (m);
return 0;
}
