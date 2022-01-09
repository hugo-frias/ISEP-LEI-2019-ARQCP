/*
 * find_all_words.c
 * 
 * Copyright 2019 Unknown <guest@porteus>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */


#include <stdio.h>
#include "vecLength.h"
#include "copy.h"
#include "upper1.h"


char* find_word(char* str, char* word, char* initial_addr){
	char* addrP = initial_addr;
	char copyWord[vecLength(word)];
	copy(word, copyWord);
	char copyStr[vecLength(str)];
	copy(str, copyStr);
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

