prog_array_sort: array_sort.o  main.o 
	gcc array_sort.o main.o -o prog_array_sort
	
array_sort.o: array_sort.s
	gcc -g -Wall -c array_sort.s -o array_sort.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_array_sort
	
run: prog_array_sort
	./prog_array_sort

