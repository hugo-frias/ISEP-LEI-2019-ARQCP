prog_encrypt: encrypt.o  main.o 
	gcc encrypt.o main.o -o prog_encrypt
	
encrypt.o: encrypt.s
	gcc -g -Wall -c encrypt.s -o encrypt.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_encrypt
	
run: prog_encrypt
	./prog_encrypt
