prog_calc: calc.o  main.o 
	gcc calc.o main.o -o prog_calc
	
calc.o: calc.s
	gcc -g -Wall -c calc.s -o calc.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_calc
	
run: prog_calc
	./prog_calc

