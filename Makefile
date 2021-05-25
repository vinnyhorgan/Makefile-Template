CC=gcc
CFLAGS=
LDFLAGS=-lSDL2

INPUT=*.c
OUTPUT=dvboy

all:
	mkdir -p build && $(CC) $(INPUT) -o build/$(OUTPUT) $(CFLAGS) $(LDFLAGS)

.PHONY: clean
clean:
	rm -r build

.PHONY: install
install:
	cp build/$(OUTPUT) /usr/local/bin

.PHONY: uninstall
uninstall:
	rm /usr/local/bin/$(OUTPUT)