prac.exe : avg.o count.o main.o
	gcc avg.o count.o main.o -o prac.exe
	
avg.o : avg.c avg.h
	gcc -std=c99 -Wall -Werror -pedantic -c avg.c
	
count.o : count.c count.h
	gcc -std=c99 -Wall -Werror -pedantic -c count.c
	
main.o : main.c avg.h count.h
	gcc -std=c99 -Wall -Werror -pedantic -c main.c
	
clean :
	rm *.o *.exe