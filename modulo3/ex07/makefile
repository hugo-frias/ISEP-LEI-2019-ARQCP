prog_decrypt: decrypt.o  main.o 
	gcc decrypt.o main.o -o prog_decrypt
	
decrypt.o: decrypt.s
	gcc -g -Wall -c decrypt.s -o decrypt.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_decrypt
	
run: prog_decrypt
	./prog_decrypt
