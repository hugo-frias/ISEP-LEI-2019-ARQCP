prog_print:  main.o 
	gcc  main.o -o prog_print
		
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_print
	
run: prog_print
	./prog_print

