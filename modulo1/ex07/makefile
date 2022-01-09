prog_array_sort1: array_sort1.o main.o
	gcc array_sort1.o main.o -o prog_array_sort1
	
array_sort1.o: array_sort1.c
	gcc -g -Wall -c array_sort1.c -o array_sort1.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_array_sort1
	
run: prog_array_sort1
	./prog_array_sort1
