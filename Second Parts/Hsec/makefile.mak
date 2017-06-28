# Compiler
CC := gcc

# Compiler options
CFLAGS := -std=c99 -Wall -Werror -pedantic

# General object files
OBJS := avg.o count.o

prac.exe : $(OBJS) main.o
	$(CC) -o prac.exe $(OBJS) main.o
	
avg.o : avg.c avg.h
	$(CC) $(CFLAGS) -c avg.c
	
count.o : count.c count.h avg.h
	$(CC) $(CFLAGS) -c count.c

main.o : main.c avg.h count.h
	$(CC) $(CFLAGS) -c main.c

clean :
	$(RM) *.o *.exe