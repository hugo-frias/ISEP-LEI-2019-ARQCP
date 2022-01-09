/*
 * main.c
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
#include "swap.h"
int main(int argc, char **argv)
{
	int vec1[3] = {1,2,3};
	int vec2[3] = {9,8,7};
	int n = 3;
	printf("vec1: %d, %d, %d \nvec2: %d, %d, %d\n", vec1[0], vec1[1], vec1[2], vec2[0], vec2[1], vec2[2]);
	swap(vec1, vec2, n);
	printf("\nvec1: %d, %d, %d \nvec2: %d, %d, %d\n", vec1[0], vec1[1], vec1[2], vec2[0], vec2[1], vec2[2]);
	return 0;
}

