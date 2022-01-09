/*
 * método que calcula o tamanho de um array
 * recebe o address do array a calcular
 */



#include <stdio.h>

int vecLength(char* str){
	int size = 0;
	while(str[size] != '\0'){
		size++;
	}
	return size;
}
