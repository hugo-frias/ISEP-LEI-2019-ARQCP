prog_vec_sum_even: vec_sum_even.o  main.o 
	gcc vec_sum_even.o main.o -o prog_vec_sum_even
	
vec_sum_even.o: vec_sum_even.s
	gcc -g -Wall -c vec_sum_even.s -o vec_sum_even.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_vec_sum_even
	
run: prog_vec_sum_even
	./prog_vec_sum_even

