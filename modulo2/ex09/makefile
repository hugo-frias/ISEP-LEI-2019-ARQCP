prog_sum_and_subtract: sum_and_subtract.o  main.o 
	gcc sum_and_subtract.o main.o -o prog_sum_and_subtract
	
sum_and_subtract.o: sum_and_subtract.s
	gcc -g -Wall -c sum_and_subtract.s -o sum_and_subtract.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_sum_and_subtract
	
run: prog_sum_and_subtract
	./prog_sum_and_subtract
