#include <stdio.h>
#include "where_is.h"

int main()
{	
	int i;
    char *str = "datdatdat";
    char c = 't';
    int vec[10];
    int *ptr = vec;
    int temp = where_is(str, c, ptr);

    for (i = 0; i < temp; i++)
    {
        printf("Posição do caractér %d na string: %d\n", c, ptr[i]);
    }

    return 0;
}
