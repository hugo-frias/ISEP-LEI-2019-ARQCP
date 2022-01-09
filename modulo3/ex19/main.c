#include <stdio.h>
#include "frequencies.h"

char* ptrgrades;
int* ptrfreq;
int num;

int main(void) {
	char grades[] = {'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20'};
	num = sizeof(grades[1])/sizeof(grades[0]);
	ptrgrades = &grades[0];
	int freq[20];
	ptrfreq = &freq[0];
	frequencies();
	return 0;
	
}
