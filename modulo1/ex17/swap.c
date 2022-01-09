/*
 * swap.c
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

void swap(int* vec1, int* vec2, int size)
{	int* Ptr1 = vec1;
	int* Ptr2 = vec2;
	int i, aux, aux2;
	for(i = 0; i<size; i++){
		aux = Ptr1[i];
		aux2 = Ptr2[i];
		Ptr1[i] = aux2;
		Ptr2[i] = aux;
	}
}

