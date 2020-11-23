CC = gcc
CFLAGS = -Wall
LDFLAGS =
OBJFILES = file1.o file2.o driver.o
TARGET = makeFielAssignment


all: $(TARGET)

$(TARGET):$(OBJFILES)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES) $(LDFLAGS) 

file1.o: file1.c
	$(CC) $(CFLAGS) -c -o file1.o file1.c

file2.o: file2.c
	$(CC) $(CFLAGS) -c -o file2.o file2.c

driver.o: driver.c
	$(CC) $(CFLAGS) -c -o driver.o driver.c

%.o: %.c 
	$(CC) $(CFLAGS)-c -o %.o %.c

clean:
	rm -f $(OBJFILES) $(TARGET) *~