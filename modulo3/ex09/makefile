prog_vec_search: vec_search.o  main.o 
	gcc vec_search.o main.o -o prog_vec_search
	
vec_search.o: vec_search.s
	gcc -g -Wall -c vec_search.s -o vec_search.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_vec_search
	
run: prog_vec_search
	./prog_vec_search
