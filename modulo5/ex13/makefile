prog_new_matrix:  new_matrix.o main.o 
	gcc  new_matrix.o main.o -o prog_new_matrix
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
new_matrix.o: new_matrix.c
	gcc -g -Wall -c new_matrix.c -o new_matrix.o
	
count_odd_matrix.o: count_odd_matrix.s
	gcc -g -Wall -s count_odd_matrix.s -o count_odd_matrix.o
	
clean:
	rm -f *.o prog_count_odd_matrix
	
run: prog_count_odd_matrix
	./prog_count_odd_matrix
