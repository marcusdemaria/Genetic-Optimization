CC = gcc
CFLAGS = -Wall -Wextra -std=c99
SOURCES = functions.c OF.c GA.c
OBJECTS = $(SOURCES:.c=.o)
EXECUTABLE = myprogram
LIBS = -lm

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(OBJECTS) -o $(EXECUTABLE) $(LIBS)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean :
	rm -f $(OBJECTS) $(EXECUTABLE)


