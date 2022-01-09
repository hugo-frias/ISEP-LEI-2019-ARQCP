prog_cube: cube.o  main.o 
	gcc cube.o main.o -o prog_cube
	
cube.o: cube.s
	gcc -g -Wall -c cube.s -o cube.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_cube
	
run: prog_cube
	./prog_cube

