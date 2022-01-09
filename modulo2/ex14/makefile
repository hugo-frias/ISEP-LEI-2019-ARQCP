prog_getArea2: getArea2.o  main.o 
	gcc getArea2.o main.o -o prog_getArea2
	
getArea2.o: getArea2.s
	gcc -g -Wall -c getArea2.s -o getArea2.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_getArea2
	
run: prog_getArea2
	./prog_getArea2
