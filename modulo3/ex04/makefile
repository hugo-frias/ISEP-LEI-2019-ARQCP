prog_vec_add_one: vec_add_one.o  main.o 
	gcc vec_add_one.o main.o -o prog_vec_add_one
	
vec_add_one.o: vec_add_one.s
	gcc -g -Wall -c vec_add_one.s -o vec_add_one.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_vec_add_one
	
run: prog_vec_add_one
	./prog_vec_add_one
