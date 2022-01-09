prog_vec_greater20: vec_greater20.o  main.o 
	gcc vec_greater20.o main.o -o prog_vec_greater20
	
vec_greater20.o: vec_greater20.s
	gcc -g -Wall -c vec_greater20.s -o vec_greater20.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_vec_greater20
	
run: prog_vec_greater20
	./prog_vec_greater20
