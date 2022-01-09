prog_array_sort2: array_sort2.o main.o
	gcc array_sort2.o main.o -o prog_array_sort2
	
array_sort2.o: array_sort2.c
	gcc -g -Wall -c array_sort2.c -o array_sort2.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_array_sort2
	
run: prog_array_sort2
	./prog_array_sort2
