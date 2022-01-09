prog_upper2: upper2.o main.o vecLength.o
	gcc upper2.o main.o vecLength.o -o prog_upper2
	
vecLength.o: vecLength.c
	gcc -g -Wall -c vecLength.c -o vecLength.o
	
upper1.o: upper2.c
	gcc -g -Wall -c upper2.c -o upper2.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_upper2
	
run: prog_upper2
	./prog_upper2
