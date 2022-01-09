prog_vec_count_bits_zero: vec_count_bits_zero.o  main.o 
	gcc vec_count_bits_zero.o main.o -o prog_vec_count_bits_zero
	
vec_count_bits_zero.o: vec_count_bits_zero.s
	gcc -g -Wall -c vec_count_bits_zero.s -o vec_count_bits_zero.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_vec_count_bits_zero
	
run: prog_vec_count_bits_zero
	./prog_vec_count_bits_zero

