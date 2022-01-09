prog_activate_invert_bits: activate_invert_bits.o  main.o 
	gcc activate_invert_bits.o main.o -o prog_activate_invert_bits
	
activate_invert_bits.o: activate_invert_bits.s
	gcc -g -Wall -c activate_invert_bits.s -o activate_invert_bits.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_activate_invert_bits
	
run: prog_activate_invert_bits
	./prog_activate_invert_bits

