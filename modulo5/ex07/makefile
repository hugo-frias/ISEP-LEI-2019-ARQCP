prog_fill_s1: fill_s1.o  main.o 
	gcc fill_s1.o main.o -o prog_fill_s1
	
fill_s1.o: fill_s1.s
	gcc -g -Wall -c fill_s1.s -o fill_s1.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_fill_s1
	
run: prog_fill_s1
	./prog_fill_s1
