prog_join_bits: join_bits.o  main.o 
	gcc join_bits.o main.o -o prog_join_bits
	
join_bits.o: join_bits.s
	gcc -g -Wall -c join_bits.s -o join_bits.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_join_bits
	
run: prog_join_bits
	./prog_join_bits

