CC = gcc
CFLAGS = -I.
DEPS = 
ShellEXE: shell.o myinclude.o
	$(CC) -o ShellEXE shell.o myinclude.o -I.
