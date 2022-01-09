prog_test_flags: test_flags.o  main.o 
	gcc test_flags.o main.o -o prog_test_flags

compute.o: test_flags.s
	gcc -g -Wall -c test_flags.s -o test_flags.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_test_flags
	
run: prog_test_flags
	./prog_test_flags
