prog_add_matrixes: add_matrixes.o new_matrix.o main.o 
	gcc add_matrixes.o new_matrix.o main.o -o prog_add_matrixes
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
new_matrix.o: new_matrix.c
	gcc -g -Wall -c new_matrix.c -o new_matrix.o
	
add_matrixes.o: add_matrixes.c
	gcc -g -Wall -c add_matrixes.c -o add_matrixes.o
	
clean:
	rm -f *.o prog_add_matrixes
	
run: prog_add_matrixes
	./prog_add_matrixes
