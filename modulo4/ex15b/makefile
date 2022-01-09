prog_greater_date: greater_date.o  main.o 
	gcc greater_date.o main.o -o prog_greater_date
	
greater_date.o: greater_date.s
	gcc -g -Wall -c greater_date.s -o greater_date.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_greater_date
	
run: prog_greater_date
	./prog_greater_date

