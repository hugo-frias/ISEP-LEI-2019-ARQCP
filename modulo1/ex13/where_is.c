
#include <stdio.h>
#include <string.h>

int where_is(char *str, char c, int *p)
{
    int num = 0, i = 0;

    int j = 0;

    //size da string
    int strSize = strlen(str);

    while (i != strSize)
    {
        if (str[i] == c)
        {
            p[j] = i;
            j++;
            num++;
        }
        i++;
    }

    return num;
}
