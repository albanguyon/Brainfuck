brainfuck: ./src/main.o
	gcc -o ./bin/brainfuck ./bin-int/main.o -O3

./src/main.o: ./src/main.c
	mkdir ./bin-int/ ./bin/ -p
	gcc -c ./src/main.c -o ./bin-int/main.o -O3

clean:
	rm -rf ./bin/ ./bin-int/
