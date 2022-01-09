/*
 * ex03.c
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

void fill_array(int *vec){
	int i;
	int value;
	
	for (i=0; i<30; i++){
		printf("Introduza um número:");
		scanf("%d",&value);
		vec[i] = value;		
	}
}

int average(int *vec){
	int i;
	int soma = 0;
	
	for (i = 0; i<30; i++){
		soma = soma + vec[i];
	}
	return soma/30;
}

int main(int argc, char **argv)
{
	int vec[30];
	fill_array(vec);
	printf("A média é de %d:",average(vec));
	return 0;
}

