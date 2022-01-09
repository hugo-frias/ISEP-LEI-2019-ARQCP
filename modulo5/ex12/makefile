prog_find_matrix: find_matrix.o new_matrix.o main.o 
	gcc find_matrix.o new_matrix.o main.o -o prog_find_matrix
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
new_matrix.o: new_matrix.c
	gcc -g -Wall -c new_matrix.c -o new_matrix.o
	
find_matrix.o: find_matrix.c
	gcc -g -Wall -c find_matrix.c -o find_matrix.o
	
clean:
	rm -f *.o prog_find_matrix
	
run: prog_find_matrix
	./prog_find_matrix
