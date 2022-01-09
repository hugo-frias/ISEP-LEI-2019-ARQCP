prog_check_num: check_num.o  main.o 
	gcc check_num.o main.o -o prog_check_num
	
check_num.o: check_num.s
	gcc -g -Wall -c check_num.s -o check_num.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_check_num
	
run: prog_check_num
	./prog_check_num
