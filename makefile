CC = gcc
CFLAGS = -I.
Testsource: Testsource.o
	$(CC) -o Testsource Testsource.o -I.
