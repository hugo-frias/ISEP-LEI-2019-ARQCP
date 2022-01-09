prog_HotCold: HotCold.o  main.o 
	gcc HotCold.o main.o -o prog_HotCold

HotCold.o: Hot_Cold.s
	gcc -g -Wall -c HotCold.s -o HotCold.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_HotCold
	
run: prog_HotCold
	./prog_HotCold
