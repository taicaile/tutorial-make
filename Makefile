CPPFLAGS = -std=c++1y -MD -MP

SRC = $(wildcard *.cpp)
all: main

main: $(SRC:%.cpp=%.o)
	g++ $(CPPFLAGS) -o $@ $^

-include $(SRC:%.cpp=%.d)
