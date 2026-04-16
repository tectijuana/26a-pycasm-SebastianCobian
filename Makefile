CC=clang
CFLAGS=-O2 -fPIC -g
LDFLAGS=-shared

BUILD=build

all: $(BUILD)/libops.so

$(BUILD)/ops.o: ops.s
	$(CC) $(CFLAGS) -c ops.s -o $(BUILD)/ops.o

$(BUILD)/bridge.o: bridge.c
	$(CC) $(CFLAGS) -c bridge.c -o $(BUILD)/bridge.o

$(BUILD)/libops.so: $(BUILD)/ops.o $(BUILD)/bridge.o
	$(CC) $(LDFLAGS) $^ -o $@

clean:
	rm -rf build/*

