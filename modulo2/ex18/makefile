prog_algoritmo: algoritmo.o  main.o 
	gcc algoritmo.o main.o -o prog_algoritmo
	
algoritmo.o: algoritmo.s
	gcc -g -Wall -c algoritmo.s -o algoritmo.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_algoritmo
	
run: prog_algoritmo
	./prog_algoritmo
