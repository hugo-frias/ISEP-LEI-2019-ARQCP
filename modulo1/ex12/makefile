prog_capitalize: capitalize.o main.o vecLength.o
	gcc capitalize.o main.o vecLength.o -o prog_capitalize
	
vecLength.o: vecLength.c
	gcc -g -Wall -c vecLength.c -o vecLength.o
	
capitalize.o: capitalize.c
	gcc -g -Wall -c capitalize.c -o capitalize.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_capitalize
	
run: prog_capitalize
	./prog_capitalize
