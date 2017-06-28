main.exe: main.o avg.o count.o
	gcc avg.o count.o main.o -o main.exe

test.exe : avg.o count.o err.o test.o
	gcc avg.o count.o err.o test.o -o test.exe
	
avg.o : avg.c avg.h
	gcc -std=c99 -Wall -Werror -pedantic -c avg.c
	
count.o : count.c count.h
	gcc -std=c99 -Wall -Werror -pedantic -c count.c
	
err.o : err.c err.h
	gcc -std=c99 -Wall -Werror -pedantic -c err.c
	
test.o : test.c avg.h count.h err.h
	gcc -std=c99 -Wall -Werror -pedantic -c test.c
	
main.o : main.c avg.h count.h
	gcc -std=c99 -Wall -Werror -pedantic -c main.c
	
clean :
	rm *.o *.exe