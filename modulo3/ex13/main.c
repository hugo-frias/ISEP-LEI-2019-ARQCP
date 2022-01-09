#include <stdio.h>
#include "keep_positives.h"

int* ptrvec;
int num;
int loop;
int main(void) {
	int grades[] = {1,2,3,4,-5,-6,-7};
	num = sizeof(grades)/sizeof(grades[0]);
	ptrvec = &grades[0];
	printf("\nAntes \n");
	 for(loop = 0; loop < num; loop++){
      printf("%d ", grades[loop]);
      };
	keep_positives();
	printf("\nDepois \n");
	 for(loop = 0; loop < num; loop++){
      printf("%d ", grades[loop]);
      };
	return 0;
	
}
