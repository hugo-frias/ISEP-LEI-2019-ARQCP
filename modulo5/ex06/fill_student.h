#ifndef fill_student_H
#define fill_student_H
#include "student.h"
void fill_student(Student *s, char age, short number, char *name, char *address);
void update_address(Student *s, char *new_address);
void update_grades(Student *s, int *new_grades);
void fill_all_students(Student *s, char *age, short *number, char *name, char *address, int num);
int locate_greater(Student *s, int minimum, int *greater_grades);
#endif
