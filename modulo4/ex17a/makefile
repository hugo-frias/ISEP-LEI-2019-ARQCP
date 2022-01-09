prog_add_byte: add_byte.o main.o
	gcc -Wall add_byte.o main.o -o prog_add_byte
		
add_byte.o: add_byte.c add_byte.h
	gcc -Wall -c add_byte.c
					
main.o: main.c add_byte.h
	gcc -Wall -c main.c

run: prog_add_byte
	./prog_add_byte
		
clean: 
	rm -f *.o prog_add_byte
