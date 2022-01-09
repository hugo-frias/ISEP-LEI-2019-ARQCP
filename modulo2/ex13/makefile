prog_getArea: getArea.o  main.o 
	gcc getArea.o main.o -o prog_getArea
	
getArea.o: getArea.s
	gcc -g -Wall -c getArea.s -o getArea.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_getArea
	
run: prog_getArea
	./prog_getArea
