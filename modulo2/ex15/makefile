prog_compute: compute.o  main.o 
	gcc compute.o main.o -o prog_compute

compute.o: compute.s
	gcc -g -Wall -c compute.s -o compute.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_compute
	
run: prog_compute
	./prog_compute
