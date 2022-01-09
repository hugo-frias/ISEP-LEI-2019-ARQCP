prog_power_ref: power_ref.o main.o
	gcc power_ref.o main.o -o prog_power_ref
	
power_ref.o: power_ref.c
	gcc -g -Wall -c power_ref.c -o power_ref.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
clean:
	rm -f *.o prog_power_ref
	
run: prog_power_ref
	./prog_power_ref
