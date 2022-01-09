prog_sum_smaller: sum_smaller.o  main.o 
	gcc sum_smaller.o main.o -o prog_sum_smaller
	
sum_smaller.o: sum_smaller.s
	gcc -g -Wall -c sum_smaller.s -o sum_smaller.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_sum_smaller
	
run: prog_sum_smaller
	./prog_sum_smaller

