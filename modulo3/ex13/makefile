prog_keep_positives: keep_positives.o  main.o 
	gcc keep_positives.o main.o -o prog_keep_positives
	
keep_positives.o: keep_positives.s
	gcc -g -Wall -c keep_positives.s -o keep_positives.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_keep_positives
	
run: prog_keep_positives
	./prog_keep_positives
