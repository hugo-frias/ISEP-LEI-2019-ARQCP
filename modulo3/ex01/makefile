prog_zero_count: zero_count.o  main.o 
	gcc zero_count.o main.o -o prog_zero_count
	
zero_count.o: zero_count.s
	gcc -g -Wall -c zero_count.s -o zero_count.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_zero_count
	
run: prog_zero_count
	./prog_zero_count
