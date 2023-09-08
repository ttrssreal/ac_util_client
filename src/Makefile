FLAGS        = -Iinclude -I../AC/source/src -I../AC/source/enet/include `sdl2-config --cflags`
CFLAGS       = -fPIC -Wall

TARGET       = libutil_client.a
SOURCES      = \
	util_client.cpp

OBJECTS = $(SOURCES:.cpp=.o)

.PHONY: all build clean

all: build

build: $(TARGET)
	@mkdir -p ../lib
	@cp $(TARGET) ../lib

$(TARGET): $(OBJECTS)
	ar rvs $@ $^

$(OBJECTS): $(SOURCES)
	$(CXX) $(CFLAGS) $(FLAGS) -c $^

clean:
	rm -f $(OBJECTS) $(TARGET)
