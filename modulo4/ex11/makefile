prog_rotate: rotate.o  main.o 
	gcc rotate.o main.o -o prog_rotate
	
rotate.o: rotate.c
	gcc -g -Wall -c rotate.c -o rotate.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_rotate
	
run: prog_rotate
	./prog_rotate

