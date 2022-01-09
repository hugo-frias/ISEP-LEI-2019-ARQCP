prog_where_exists: where_exists.o main.o
	gcc where_exists.o main.o -o prog_where_exists
	
where_exists.o: where_exists.c
	gcc -g -Wall -c where_exists.c -o where_exists.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_where_exists
	
run: prog_where_exists
	./prog_where_exists
