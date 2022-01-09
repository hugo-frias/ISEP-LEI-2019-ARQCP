prog_palindrome: palindrome.o  main.o 
	gcc palindrome.o main.o -o prog_palindrome
	
palindrome.o: palindrome.c
	gcc -g -Wall -c palindrome.c -o palindrome.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_palindrome
	
run: prog_palindrome
	./prog_palindrome
