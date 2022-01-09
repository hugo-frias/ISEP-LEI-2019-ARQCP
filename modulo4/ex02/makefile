prog_sum_n: sum_n.o  main.o 
	gcc sum_n.o main.o -o prog_sum_n
	
sum_n.o: sum_n.s
	gcc -g -Wall -c sum_n.s -o sum_n.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_sum_n
	
run: prog_sum_n
	./prog_sum_n

