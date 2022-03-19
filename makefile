CC=g++
CFLAGS=-c -g -O0 -std=c++11 -Wall
LDFLAGS= -lSDL2 -lSDL2_image
SOURCES=sort.cpp sorter.cpp SDL_Manager.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=run

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm -f core $(EXECUTABLE) $(OBJECTS)
