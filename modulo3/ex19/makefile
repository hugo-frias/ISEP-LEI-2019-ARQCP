prog_frequencies: frequencies.o  main.o 
	gcc frequencies.o main.o -o prog_frequencies
	
frequencies.o: frequencies.s
	gcc -g -Wall -c frequencies.s -o frequencies.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_frequencies
	
run: prog_frequencies
	./prog_frequencies
