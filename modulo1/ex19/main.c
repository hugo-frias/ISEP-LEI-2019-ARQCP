/*
 * main do método "find_word"
 */


#include <stdio.h>
#include "find_word.h"



int main(int argc, char **argv)
{
	char str[] = "abcdxrt egf xrt";
	char word[] = "xrt";
	printf("%p",find_word(str, word, &str[9]));
	
	return 0;
}

