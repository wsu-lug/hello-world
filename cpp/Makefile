LIBRARIES=
EXECUTABLE=hello-world
all:
	mkdir -p bin
	g++ -g -std=c++14 main.cpp -o bin/$(EXECUTABLE) $(LIBRARIES)

run:
	make all
	./bin/$(EXECUTABLE)

default: make all