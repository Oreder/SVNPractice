prac.exe : avg.o count.o main.o
	gcc avg.o count.o main.o -o prac.exe

avg.o :	avg.c
	gcc -std=c99 -Wall -Werror -pedantic -c avg.c
	
count.o : count.c avg.o
	gcc -std=c99 -Wall -Werror -pedantic -c count.c

main.o : main.c
	gcc -std=c99 -Wall -Werror -pedantic -c main.c
	
clean :
	rm *.o *.exe
