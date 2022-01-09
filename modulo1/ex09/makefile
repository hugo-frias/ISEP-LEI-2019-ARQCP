prog_sort_without_reps: sort_without_reps.o array_sort1.o main.o 
	gcc sort_without_reps.o array_sort1.o main.o -o prog_sort_without_reps
	
array_sort1.o: array_sort1.c
	gcc -g -Wall -c array_sort1.c -o array_sort1.o
	
sort_without_reps.o: sort_without_reps.c
	gcc -g -Wall -c sort_without_reps.c -o sort_without_reps.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_sort_without_reps
	
run: prog_sort_without_reps
	./prog_sort_without_reps
