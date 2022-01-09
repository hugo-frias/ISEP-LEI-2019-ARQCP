#include <stdio.h>	
#include <stdlib.h> 
#include "new_matrix.h"
#include "add_matrixes.h"
	
int main( void ){
	int **m;
	int **a;
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
    printf(")\n");
    a = new_matrix(lines, columns);
   
     for(x = 0 ; x < lines ; x++) {
        printf(" (");
        for(y = 0 ; y < columns ; y++){
			a[x][y]=(x+2)*(y+2);
            printf("%d     ", a[x][y]);
        }
        printf("\n");
    }
    
   int** c = new_matrix(lines, columns);
    c = add_matrixes(m, a, lines, columns);
    
    for(x = 0 ; x < lines ; x++) {
        printf(" (");
        for(y = 0 ; y < columns ; y++){
            printf("%d     ", c[x][y]);
        }
        printf(")\n");
    }
     printf("\n");
	
	for (i = 0; i < lines ; i ++){
		 free (*(c+i));
	}
	free (c);
	
	for (i = 0; i < lines ; i ++){
		 free (*(a+i));
	}
	free (a);
	
	for (i = 0; i < lines ; i ++){
		 free (*(m+i));
	}
	free (m);

return 0;
}
