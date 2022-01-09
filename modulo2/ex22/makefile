prog_code1: code1.o  main.o 
	gcc code1.o main.o -o prog_code1
	
code1.o: code1.s
	gcc -g -Wall -c code1.s -o code1.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_code1
	
run: prog_code1
	./prog_code1
