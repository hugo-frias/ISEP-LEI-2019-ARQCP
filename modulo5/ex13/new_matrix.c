#include <stdio.h>	
#include <stdlib.h> 

int **new_matrix(int lines, int columns){
	int m;
	int **a;
	
	a = (int **) calloc (lines,sizeof (int *));
	if(a == NULL){
		printf(" Error reserving memory .\n " ); 
		exit (1);
	}
	for (m = 0; m < lines ; m ++){
	/* in each position of the pointer array ,
	reserve memory for K integers */
		*(a+m) = (int *) calloc (columns,sizeof(int)); // Note : *(a+m) same as a[m]
		if(a[m] == NULL){
			printf(" Error reserving memory .\n " );
			exit (1);
		}
	}
	return a;
}

