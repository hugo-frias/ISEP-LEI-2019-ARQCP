prog_sort_without_reps: sort_without_reps.o  main.o 
	gcc sort_without_reps.o main.o -o prog_sort_without_reps
	
sort_without_reps.o: sort_without_reps.s
	gcc -g -Wall -c sort_without_reps.s -o sort_without_reps.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_sort_without_reps
	
run: prog_sort_without_reps
	./prog_sort_without_reps

