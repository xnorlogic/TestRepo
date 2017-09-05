IDIR =include
ODIR =obj
SDIR =source

CC = gcc
CFLAGS = -I$(IDIR)

_DEPS = myinclude.h
_OBJ = myinclude.o shell.o
_SOURCE = myinclude.c shell.c

DEPS = $(patsubst %,$(IDIR)/%,$(_DEPS))
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))
SOURCE = $(patsubst %,$(SDIR)/%,$(_SOURCE))

$(ODIR)/%.o: $(SDIR)/%.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

ShellEXE: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
