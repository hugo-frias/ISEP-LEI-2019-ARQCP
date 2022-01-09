/*
 * ex04.c
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
int count(int *vec, int n, int value){
	int i;
	int counter;
	for (i = 0; i<n; i++){
		if (vec[i]==value){
			counter++;
	}
}
return counter;
}
int main(int argc, char **argv)
{
	int vec[3] = {1,1,2};
	printf("O número de vezes que aparece o 1: %d vezes",count(vec,3,1));
	return 0;
}

