prog_upper1: upper1.o main.o
	gcc upper1.o main.o -o prog_upper1
	
upper1.o: upper1.c
	gcc -g -Wall -c upper1.c -o upper1.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_upper1
	
run: prog_upper1
	./prog_upper1
