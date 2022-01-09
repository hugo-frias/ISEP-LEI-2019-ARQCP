prog_add_byte: main.o add_byte.o
	gcc -Wall -g main.o add_byte.o -o prog_add_byte
		
add_byte.o: add_byte.s add_byte.h
	gcc -Wall -g -c add_byte.s
					
main.o: main.c add_byte.h
	gcc -Wall -g -c main.c

run: prog_add_byte
	./prog_add_byte

clean: 
	rm -f *.o prog_add_byte

