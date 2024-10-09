
CXX = g++
CXXFLAGS = -Wall -std=c++17
LDFLAGS = 
SOURCES = main.cpp Document.cpp Editor.cpp
HEADERS = Document.h Editor.h
OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = ed-text-editor

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CXX) $(OBJECTS) -o $(EXECUTABLE) $(LDFLAGS)

%.o: %.cpp $(HEADERS)
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)

.PHONY: all clean
