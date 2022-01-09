prog_calculator: calculator.o  main.o 
	gcc calculator.o main.o -o prog_calculator

isMultiple.o: calculator.s
	gcc -g -Wall -c calculator.s -o calculator.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_calculator
	
run: prog_calculator
	./prog_calculator
