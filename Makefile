all : sum_test

main.o : main.cpp sum.h
	g++ -c -o main.o main.cpp
some.o : sum.cpp sum.h
	g++ -c -o sum.o sum.cpp
sum_test : main.o sum.o
	g++ -o sum_test main.o sum.o
clean :
	rm -f sum_test
