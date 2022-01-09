/*
 * método que faz o mesmo que o método "where_exists", só que neste caso faz a distinção entre maiúsculas e minusculas e
 * pode começar a fazer a procura no meio da string.
 */


#include <stdio.h>
#include "vecLength.h"
#include "copy_vec.h"
#include "upper1.h"


char* find_word(char* str, char* word, char* initial_addr){
	char* addrP = initial_addr;
	int lengthWord = vecLength(word);
	char copyWord[lengthWord];
	copy_vec(word, copyWord, lengthWord);
	int lengthStr = vecLength(str);
	char copyStr[lengthStr];
	copy_vec(str, copyStr,lengthStr);
	int size = vecLength(word), i = 0, k = 0, count = 0;
	while(&str[i] != addrP){
		i++;
	}
	i++;
	upper1(copyWord);
	upper1(copyStr);
	while(copyStr[i] != '\0'){
		if(copyStr[i] == copyWord[0]){
			while(copyWord[k] != '\0'){
				if(copyWord[k] == copyStr[i+k]){				    
					count++;
				}
				k++;
			}
			k = 0;
			if(count == size){
				char* Ptr3 = &str[i];
				return Ptr3;
			}
			count = 0;
		}
		i++;
	}
	return '\0';

}

