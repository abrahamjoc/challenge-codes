CC = gcc
CFLAGS  = -g -Wall

TARGET = recursive_fibonacci

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $(TARGET) $(TARGET).c

clean:
	$(RM) $(TARGET)