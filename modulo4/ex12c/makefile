prog_activate_2bits: activate_2bits.o  main.o 
	gcc activate_2bits.o main.o -o prog_activate_2bits
	
activate_2bits.o: activate_2bits.s
	gcc -g -Wall -c activate_2bits.s -o activate_2bits.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_activate_2bits
	
run: prog_activate_2bits
	./prog_activate_2bits

