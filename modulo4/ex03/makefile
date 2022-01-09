prog_greatest: greatest.o  main.o 
	gcc greatest.o main.o -o prog_greatest
	
greatest.o: greatest.s
	gcc -g -Wall -c greatest.s -o greatest.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_greatest
	
run: prog_greatest
	./prog_greatest

