#include <stdio.h>
#include "student.h"

void fill_student(Student *s, char age, short number, char *name, char *address){
	int asize,num,i,j;
	num=sizeof(s->name)/sizeof(s->name[0]);
	asize = sizeof(s->address)/sizeof(s->address[0]);
	s -> age = age;
	s -> number = number;
	for(i=0; i<num; i++){
		s->name[i]=*(name+i);
		s->address[i]=*(address+i);
	}

	for(j=i; j<asize; j++){
		s->address[i]=*(address+i);
	}
}

void fill_all_students(Student *s, char *age, short *number, char *name, char *address, int num){
	int k;
	for(k=0; k<num;k++){
		fill_student((s+k), *(age+k), *(number+k), (name+k), (address+k));
	}

}

void update_address(Student *s, char *new_address){
	int asize,i;
	asize = sizeof(s->address)/sizeof(s->address[0]);
	for(i=0; i<asize; i++){
		s->address[i]=*(new_address+i);
	}
}
