prog_vec_sum_avg: vec_sum_avg.o  main.o 
	gcc vec_sum_avg.o main.o -o prog_vec_sum_avg
	
vec_sum_avg.o: vec_sum_avg.s
	gcc -g -Wall -c vec_sum_avg.s -o vec_sum_avg.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_vec_sum_avg
	
run: prog_vec_sum_avg
	./prog_vec_sum_avg
