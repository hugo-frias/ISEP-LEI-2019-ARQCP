prog_exists: exists.o  main.o 
	gcc exists.o main.o -o prog_exists
	
exists.o: exists.s
	gcc -g -Wall -c exists.s -o exists.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_exists
	
run: prog_exists
	./prog_exists

