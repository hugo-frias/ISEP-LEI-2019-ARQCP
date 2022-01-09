/*
 * ex05.c
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
int string_to_int(char *str){
	int num = 0;
	sscanf(str, "%d", &num);
	return num;
	/*int num = 0;
	int i;
	size_t n = sizeof(str)/sizeof(str[0]);
	for(i=0; i<n+1; i++){
		num = num*10+str[i]-'0';
	}
	while (str[i]!='\0'){
	 if(str[i]>=0&&str[i]<=9){
		num = num*10 + str[i]-'0';
		}
		i++;
	}
	return num;*/
}
int main(int argc, char **argv)
{
	printf("o número é %d",string_to_int("125"));
	return 0;
}

