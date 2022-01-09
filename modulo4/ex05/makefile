prog_inc_and_square: inc_and_square.o  main.o 
	gcc inc_and_square.o main.o -o prog_inc_and_square
	
inc_and_square.o: inc_and_square.s
	gcc -g -Wall -c inc_and_square.s -o inc_and_square.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_inc_and_square
	
run: prog_inc_and_square
	./prog_inc_and_square

