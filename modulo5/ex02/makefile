prog_ex02: main.o 
	gcc  main.o -o prog_ex02
	
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_ex02
	
run: prog_ex02
	./prog_ex02

