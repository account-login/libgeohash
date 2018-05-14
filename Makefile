# Simple Makefile for static library construction and testing

all: library test

library:
	gcc -Wall -c geohash.c -o geohash.o
	ar rcs libgeohash.a geohash.o
	rm geohash.o
	
test:
	gcc -Wall geohash_test.c geohash.c
	./a.out
	rm a.out
	
clean: 
	rm -rf *.a *.o
