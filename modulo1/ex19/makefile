prog_find_word: find_word.o main.o upper1.o vecLength.o copy_vec.o
	gcc find_word.o main.o upper1.o vecLength.o copy_vec.o -o prog_find_word
	
find_word.o: find_word.c
	gcc -g -Wall -c find_word.c -o find_word.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
upper1.o: upper1.c
	gcc -g -Wall -c upper1.c -o upper1.o

vecLength.o: vecLength.c
	gcc -g -Wall -c vecLength.c -o vecLength.o
	
copy_vec.o: copy_vec.c
	gcc -g -Wall -c copy_vec.c -o copy_vec.o
	
clean:
	rm -f *.o prog_find_word
	
run: prog_find_word
	./prog_find_word
