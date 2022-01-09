/*
 * ex06.c
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
int fill_array(int *vec){
	int i;
	int value;
	for(i = 0; i<2;i++){
		printf("Introduza um número:");
		scanf("%d",&value);
		vec[i] = value;	
	}
	int average = (vec[0]+vec[1])/2;
	return average;
}
	

int main(int argc, char **argv)
{
	int vec[2];	
	printf("A média entre %d e %d é: %d",vec[0],vec[1],fill_array(vec));
	return 0;
}

