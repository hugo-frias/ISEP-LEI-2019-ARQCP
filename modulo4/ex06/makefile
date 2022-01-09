prog_test_equal: test_equal.o  main.o 
	gcc test_equal.o main.o -o prog_test_equal
	
test_equal.o: test_equal.s
	gcc -g -Wall -c test_equal.s -o test_equal.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_test_equal
	
run: prog_test_equal
	./prog_test_equal

