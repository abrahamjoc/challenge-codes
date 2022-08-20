.PHONY: clean run

CC = gcc
CFLAGS  = -g -Wall

TARGET = recursive_fibonacci memoization_fibonacci dynamic_programming_fibonacci

all: $(TARGET)

recursive_fibonacci: recursive_fibonacci.c
	$(CC) $(CFLAGS) -o recursive_fibonacci recursive_fibonacci.c

memoization_fibonacci: memoization_fibonacci.c
	$(CC) $(CFLAGS) -o memoization_fibonacci memoization_fibonacci.c

dynamic_programming_fibonacci: dynamic_programming_fibonacci.c
	$(CC) $(CFLAGS) -o dynamic_programming_fibonacci dynamic_programming_fibonacci.c

clean:
	$(RM) $(TARGET)