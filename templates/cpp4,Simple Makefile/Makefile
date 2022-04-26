CC=g++
CFLAGS=-I. -g
OBJ = code.o

%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

code: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

all: code

.PHONY: clean

clean:
	rm -rf code
	rm *.o

