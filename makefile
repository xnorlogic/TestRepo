CC = gcc
CFLAGS = -I.
DEPS = myinclude.h
OBJ = myinclude.o shell.o

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

ShellEXE: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
