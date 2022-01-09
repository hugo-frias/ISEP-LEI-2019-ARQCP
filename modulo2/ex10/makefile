prog_sum2ints: sum2ints.o  main.o 
	gcc sum2ints.o main.o -o prog_sum2ints
	
sum2ints.o: sum2ints.s
	gcc -g -Wall -c sum2ints.s -o sum2ints.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_sum2ints
	
run: prog_sum2ints
	./prog_sum2ints
