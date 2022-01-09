/*
 * ex02.c
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
int sum (int a, int b){
	int sum = a + b;
	return sum;
}
int main(int argc, char **argv)
{
	int a = 0;
	int b = 1;
	int soma = 0;
	while (soma<10){
		soma = sum(a,b);
		if (soma>=10){
			printf("A soma final é %d",soma);
			break;
		}
		printf("A soma de %d e %d é %d\n",a,b,soma);
		a++;
		b++;
	}
	return 0;

}

