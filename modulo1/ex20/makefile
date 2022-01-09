prog_find_all_words: find_all_words.o main.o upper1.o vecLength.o copy.o find_word.o
	gcc find_all_words.o main.o upper1.o vecLength.o copy.o find_word.o -o prog_find_all_words
	
find_all_words.o: find_all_words.c
	gcc -g -Wall -c find_all_words.c -o find_all_words.o
	
main.o: main.c
	gcc -g -Wall -c main.c -o main.o
	
upper1.o: upper1.c
	gcc -g -Wall -c upper1.c -o upper1.o

vecLength.o: vecLength.c
	gcc -g -Wall -c vecLength.c -o vecLength.o
	
copy.o: copy.c
	gcc -g -Wall -c copy.c -o copy.o
	
clean:
	rm -f *.o prog_find_all_words
	
run: prog_find_all_words
	./prog_find_all_words
