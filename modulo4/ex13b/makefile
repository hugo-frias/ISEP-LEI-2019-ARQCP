prog_activate_bits: activate_bits.o  main.o 
	gcc activate_bits.o main.o -o prog_activate_bits
	
activate_bits.o: activate_bits.s
	gcc -g -Wall -c activate_bits.s -o activate_bits.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_activate_bits
	
run: prog_activate_bits
	./prog_activate_bits

