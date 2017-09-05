IDIR =include
ODIR =obj
CC = gcc
CFLAGS = -I$(IDIR)

_DEPS = myinclude.h
_OBJ = myinclude.o shell.o

DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

ShellEXE: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
