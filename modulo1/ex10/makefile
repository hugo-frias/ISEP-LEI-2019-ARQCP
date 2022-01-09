prog_odd_sum: odd_sum.o main.o
	gcc odd_sum.o main.o -o prog_odd_sum
	
odd_sum.o: odd_sum.c
	gcc -g -Wall -c odd_sum.c -o odd_sum.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_odd_sum
	
run: prog_odd_sum
	./prog_odd_sum
