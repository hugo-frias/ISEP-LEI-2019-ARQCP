prog_sum_first_byte: sum_first_byte.o  main.o 
	gcc sum_first_byte.o main.o -o prog_sum_first_byte
	
sum_first_byte.o: sum_first_byte.s
	gcc -g -Wall -c sum_first_byte.s -o sum_first_byte.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_sum_first_byte
	
run: prog_sum_first_byte
	./prog_sum_first_byte
