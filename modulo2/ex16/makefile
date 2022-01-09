prog_steps: steps.o  main.o 
	gcc steps.o main.o -o prog_steps
	
steps.o: steps.s
	gcc -g -Wall -c steps.s -o steps.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_steps
	
run: prog_steps
	./prog_steps
