# Compiler
CC := gcc

# Compiler options
CFLAGS := -std=c99 -Wall -Werror -pedantic

# General object files
OBJS := avg.o count.o err.o

main.exe: $(OBJS) main.o
	$(CC) -o main.exe $(OBJS) main.o

test.exe : $(OBJS) test.o
	$(CC) -o test.exe $(OBJS) test.o
	
avg.o : avg.c avg.h
	$(CC) $(CFLAGS) -c avg.c
	
count.o : count.c count.h avg.h
	$(CC) $(CFLAGS) -c count.c

err.o : err.c err.h
	$(CC) $(CFLAGS) -c err.c
	
main.o : main.c avg.h count.h
	$(CC) $(CFLAGS) -c main.c
	
test.o : test.c avg.h count.h err.h
	$(CC) $(CFLAGS) -c test.c

clean :
	$(RM) *.o *.exe