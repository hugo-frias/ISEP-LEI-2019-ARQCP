prog_vec_zero: vec_zero.o  main.o 
	gcc vec_zero.o main.o -o prog_vec_zero
	
vec_zero.o: vec_zero.s
	gcc -g -Wall -c vec_zero.s -o vec_zero.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_vec_zero
	
run: prog_vec_zero
	./prog_vec_zero

