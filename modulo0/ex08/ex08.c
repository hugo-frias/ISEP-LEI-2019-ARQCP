/*
 * ex08.c
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
#include <math.h>

int string_to_int(char *str){
	int i = 0;
	sscanf(str, "%d", &i);
	return i;
}
int integer_part(char *x){	
	int b=0;	
	size_t n = sizeof(x)/sizeof(x[0]);
	char aux[n];
	while(x[b]!='.'){
		aux[b] = x[b];
		b++;
	}
	int integerPart = string_to_int(aux);
	return integerPart;
	
}
int fractional_part(char *x){	
	int b = 0;
	int i = 0;
	int j = 0;
	size_t n = sizeof(x)/sizeof(x[0]);
	char aux[n];
	for (i = 0; i<n; i++){
		if(x[i] =='.'){
			for (b = i+1; b<n; b++){
				aux[j] = x[b];
				j++;
			}	
			int fractionalPart = string_to_int(aux);
			return fractionalPart;		
		}
	}
	return 1;
	
}
int main(int argc, char **argv)
{
	char x[] = "123.456";
	printf("A parte inteira é: %d e a parte decimal é: %d",integer_part(x), fractional_part(x));
	return 0;
}

