OBJ = main.o window.o borderlayout.o

borderlayout :$(OBJ)
	cc -o $(OBJ)

main.o : main.cpp window.h borderlayout.h
	cc -c main.cpp

window.o : window.cpp window.h borderlayout.h
	cc -c window.cpp

borderlayout.o : borderlayout.cpp borderlayout.h
	cc -c borderlayout.cpp

.PHONY : clean
clean :
	rm borderlayout $(OBJ)


