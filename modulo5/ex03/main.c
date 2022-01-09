#include <stdio.h>
#include <stdlib.h>
#include "fill_student.h"
#include "student.h"


int asize;
int num;

int main( void ){

	Student s; // = calloc(5* sizeof(Student));
	int num = 5;
	char *name[5] = {"rute","lara","diogo","tiago","cesar"};
	char *age[5] = {"1","3","4","5","6"};
	short number[5] = {2,3,5,6,7};
	char *address[5]={"rua1","rua2","rua3","rua4","rua5"};
	
	fill_all_students(&s, &age, &number, &name, &address, num);

return 0;
}
