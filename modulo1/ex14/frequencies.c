/*
 * método que calcula a frequencia que uma dada nota aparece numa string
 * recebe o número de notas, um array com as notas de 0 a 20, e um array onde colocar as suas frequencias
 */


#include <stdio.h>


void frequencies(float *grades, int n, int *freq){
	int i,j,k,b;
	float *Ptr = grades;
	int *Ptr2 = freq;	
	for(b = 0; b<21; b++){
		Ptr2[b] = 0;
	}
	for(j=0; j<21; j++){
		for(k = 0; k<n; k++){
			i = (int) Ptr[k];
			if(i==j){
				Ptr2[j] += 1;
			}
		}
	}
}
