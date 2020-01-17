myProgram: employee.o address.o employee.h address.h
		g++ -Wall -ansi -pedantic main.cpp -lm employee.o address.o -o myProgram
employee.o: employee.cpp address.h employee.h
		g++ -c -Wall -ansi -pedantic employee.cpp -o employee.o
address.o: address.cpp address.h
		g++ -c -Wall -ansi -pedantic address.cpp -o address.o
clean: 
		rm *.o
.PHONY: clean
