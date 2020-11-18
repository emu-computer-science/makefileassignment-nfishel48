CC = gcc
CFLAGS = -Wall
LDFLAGS =
OBJFILES = file1.o file2.o driver.o
TARGET = stacktest


all: $(TARGET)

$(TARGET):$(OBJFILES)
	$(CC)$(CFLAGS) -o $(TARGET)$(OBJFILES)$(LDFLAGS) 

file1.o: file1.c
	$(CC) -c -o file1.o file1.c

file2.o: file2.c
	$(CC) -c -o file2.o file2.c

driver.o: driver.c
	$(CC) -c -o driver.o driver.c

%.o: %.c 
	$(CC)-c -o %.o %.c

clean:
	rm -f $OBJFILES)($TARGET) *~