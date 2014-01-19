# Makefile to generate dhtest

CC=gcc
# CFLAGS=-Wall

dhtest: dhtest.o functions.o 
	$(CC) dhtest.o functions.o -o dhtest

clean:
	rm -f dhtest functions.o dhtest.o

test:
	sudo ./dhtest -m 00:11:22:33:44:55 -V -S localhost
