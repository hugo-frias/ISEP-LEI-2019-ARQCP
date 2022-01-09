prog_fun: fun.o  main.o 
	gcc fun.o main.o -o prog_fun
	
fun.o: fun.s
	gcc -g -Wall -c fun.s -o fun.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_fun
	
run: prog_fun
	./prog_fun
