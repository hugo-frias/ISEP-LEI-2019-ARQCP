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
#include "find_word.h"

void find_all_words(char* str, char* word, char** addrs) {
	int i = 0; int k = 0;
	char* ptr = '\0';
	while(str[i] != '\0'){		
		if(find_word(str, word, &str[0]) == &str[0]){
			addrs[k] = &str[0];
			k++;
		}
		char* ptr2 = find_word(str, word, &str[i]);
		if(ptr != ptr2){
			addrs[k] = ptr2;
			k++;
			ptr = ptr2;
		}
		i++;
	}
}

