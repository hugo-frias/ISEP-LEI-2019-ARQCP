prog_str_copy_porto2: str_copy_porto2.o  main.o 
	gcc str_copy_porto2.o main.o -o prog_str_copy_porto2
	
str_copy_porto2.o: str_copy_porto2.s
	gcc -g -Wall -c str_copy_porto2.s -o str_copy_porto2.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_str_copy_porto2
	
run: prog_str_copy_porto2
	./prog_str_copy_porto2
