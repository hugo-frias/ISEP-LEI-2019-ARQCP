prog_new_salary: new_salary.o  main.o 
	gcc new_salary.o main.o -o prog_new_salary

new_salary.o: new_salary.s
	gcc -g -Wall -c new_salary.s -o new_salary.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_new_salary
	
run: prog_new_salary
	./prog_new_salary
