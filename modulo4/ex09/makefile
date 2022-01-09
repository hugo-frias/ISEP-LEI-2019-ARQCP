prog_calculate: calculate.o  main.o 
	gcc calculate.o  main.o -o prog_calculate
	
calculate.o: calculate.s
	gcc -g -Wall -c calculate.s -o calculate.o

main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_calculate
	
run: prog_calculate
	./prog_calculate

