CC=clang
CFLAGS=-O2 -fPIC -g
LDFLAGS=-shared

all: build/libops.so

build/ops.o: src/ops.s
	$(CC) $(CFLAGS) -c src/ops.s -o build/ops.o

build/bridge.o: src/bridge.c
	$(CC) $(CFLAGS) -c src/bridge.c -o build/bridge.o

build/libops.so: build/ops.o build/bridge.o
	$(CC) $(LDFLAGS) $^ -o $@

clean:
	rm -rf build/*
