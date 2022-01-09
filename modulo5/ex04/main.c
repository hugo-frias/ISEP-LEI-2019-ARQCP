#include <stdio.h>
#include <stdlib.h>
#include "fill_student.h"
#include "student.h"


int asize;
int num;

int main( void ){

	Student s; 
	char name[]="rute";
	char address[]="rua1";
	char age='9';
	short number =35;
	char new_address[]="rua2";
	
	fill_student(&s, age, number, name, address);
	    printf("\nStudent_number : %hi\n"
           "Stud_name : %s\n"
           "age: %c\n"
           "address: %s\n\n", 
           s.number, s.name, s.age, 
           s.address); 
           
	update_address(&s, new_address);
	
	    printf("\nStudent_number : %hi\n"
           "Stud_name : %s\n"
           "age: %c\n"
           "address: %s\n\n", 
           s.number, s.name, s.age, 
           s.address); 

return 0;
}

