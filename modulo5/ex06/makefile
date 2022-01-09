prog_fill_student:  fill_student.o main.o 
	gcc  fill_student.o main.o -o prog_fill_student
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
fill_student.o: fill_student.c
	gcc -g -Wall -c fill_student.c -o fill_student.o
	
clean:
	rm -f *.o prog_fill_student
	
run: prog_fill_student
	./prog_fill_student
