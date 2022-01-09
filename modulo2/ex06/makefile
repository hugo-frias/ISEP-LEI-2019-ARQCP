prog_concatBytes: asm.o  main.o 
	gcc asm.o main.o -o prog_concatBytes
	
asm.o: asm.s
	gcc -g -Wall -c asm.s -o asm.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_concatBytes
	
run: prog_concatBytes
	./prog_concatBytes
