prog_mixed_sum: mixed_sum.o  main.o 
	gcc mixed_sum.o main.o -o prog_mixed_sum
	
mixed_sum.o: mixed_sum.s
	gcc -g -Wall -c mixed_sum.s -o mixed_sum.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_mixed_sum
	
run: prog_mixed_sum
	./prog_mixed_sum

