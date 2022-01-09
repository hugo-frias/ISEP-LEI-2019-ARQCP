prog_activate_bit: activate_bit.o  main.o 
	gcc activate_bit.o main.o -o prog_activate_bit
	
activate_bit.o: activate_bit.s
	gcc -g -Wall -c activate_bit.s -o activate_bit.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_activate_bit
	
run: prog_activate_bit
	./prog_activate_bit

