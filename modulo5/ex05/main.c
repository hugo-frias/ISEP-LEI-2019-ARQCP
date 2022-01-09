#include <stdio.h>
#include <stdlib.h>
#include "fill_student.h"
#include "student.h"


int asize;
int num;

int main( void ){
	int i;
	Student s; 
	char name[]="rute";
	char address[]="rua1";
	char age='9';
	short number =35;
	//char new_address[]="rua2";
	int new_grades[]={1,2,3,4,5,6,1,8,9,10};
	
	fill_student(&s, age, number, name, address);
	    printf("\nStudent_number : %hi\n"
           "Stud_name : %s\n"
           "age: %c\n"
           "address: %s\n\n", 
           s.number, s.name, s.age, 
           s.address); 
           
	update_grades(&s, new_grades);
	
	    printf("\nStudent_number : %hi\n"
           "Stud_name : %s\n"
           "age: %c\n"
           "address: %s\n", 
           s.number, s.name, s.age, 
           s.address); 
           printf("grades:\n");
    for(i=0; i<10; i++){
		printf("%d\n",s.grades[i]);
	}

return 0;
}

