prog_isMultiple: isMultiple.o  main.o 
	gcc isMultiple.o main.o -o prog_isMultiple

isMultiple.o: isMultiple.s
	gcc -g -Wall -c isMultiple.s -o isMultiple.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_isMultiple
	
run: prog_isMultiple
	./prog_isMultiple
