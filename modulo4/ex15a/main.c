#include <stdio.h>
#include "greater_date.h"

	unsigned int date1;
	unsigned int date2;

int main(void) {
	date1=10201411;
	date2=11201411;
	unsigned int res = greater_date(date1,date2);
	printf("%d\n",res);
return 0;
}
