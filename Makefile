CC=g++
CCFLAGS= -Wall -std=c++11 -g
LDLIBS= -lsfml-graphics -lsfml-window -lsfml-system -lsfml-network -lsfml-audio
SRC= $(wildcard *.cc)
OBJ= $(SRC:.cc=.o)


Wall-e : $(OBJ) 
	$(CC) $(CCFLAGS)  -o $@ $^ $(LDLIBS)

%.o: %.cc
	$(CC) $(CCFLAGS) -I../ -o $@ -c $<

clean :
	rm -f *.o Wall-e 