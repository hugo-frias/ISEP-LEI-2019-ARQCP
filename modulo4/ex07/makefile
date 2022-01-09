prog_count_even: count_even.o  main.o 
	gcc count_even.o main.o -o prog_count_even
	
count_even.o: count_even.s
	gcc -g -Wall -c count_even.s -o count_even.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_count_even
	
run: prog_count_even
	./prog_count_even

