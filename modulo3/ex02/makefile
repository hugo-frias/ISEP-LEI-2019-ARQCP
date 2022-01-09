prog_str_copy_porto: str_copy_porto.o  main.o 
	gcc str_copy_porto.o main.o -o prog_str_copy_porto
	
str_copy_porto.o: str_copy_porto.s
	gcc -g -Wall -c str_copy_porto.s -o str_copy_porto.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_str_copy_porto
	
run: prog_str_copy_porto
	./prog_str_copy_porto
