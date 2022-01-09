#include <stdio.h>
#include "code1.h"
int i;
int j;

int cf(int i, int j){
	int h = 0;
	
	if (i == j){
		h = i - j + 1;
		}
	
	else{
		h = i + j -1;
		}
	
	return h;
}



int cf2(int i, int j){
	int h = 0;
	
	if (i > j){
		i = i - 1;
	}
	
	else{
		j = j + 1;
		h = j * i;
	}
	
	return h;
}

int cf3(int i, int j){
	
	int h = 0, g = 0, r = 0;
	
	if (i >= j) {
		h = i * j;
		g = i + 1;
		}
		
	else {
		h = i + j;
		g = i + j + 2;
		}
		
	r = g / h;
	
	return r;
}

int cf4(int i, int j){
	int h = 0;
	
	if (i + j < 10){
		h = 4 * i * i;
	}
	else{
		h = j * j / 3;
	}
	return h;
}



int main(void) {

printf("Insira o valor de I:");
scanf("%d",&i);

printf("Insira o valor de J:");
scanf("%d",&j);

printf("\nCálculos em assembly:\n");

int h = f();

printf("valor de H1: %d \n", h);

int h2 = f2();

printf("valor de H2: %d \n", h2);

int r = f3();

printf("valor de R: %d \n", r);

int h4 = f4();

printf("valor de H3: %d \n", h4);

printf("\nCálculos em C:\n");

int ch = cf(i,j);

printf("valor de H1: %d \n", ch);

int ch2 = cf2(i,j);

printf("valor de H2: %d \n", ch2);

int cr = cf3(i,j);

printf("valor de R: %d \n", cr);

int ch4 = cf4(i,j);

printf("valor de H3: %d \n", ch4);

return 0;
}
