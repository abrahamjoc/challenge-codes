.PHONY: clean run

CC = gcc
CFLAGS  = -g -Wall

TARGET = recursive_fibonacci memoization_fibonacci dp_bottom_up_fibonacci dp_top_down_fibonacci

all: $(TARGET)

recursive_fibonacci: recursive_fibonacci.c
	$(CC) $(CFLAGS) -o recursive_fibonacci recursive_fibonacci.c

memoization_fibonacci: memoization_fibonacci.c
	$(CC) $(CFLAGS) -o memoization_fibonacci memoization_fibonacci.c

dp_bottom_up_fibonacci: dp_bottom_up_fibonacci.c
	$(CC) $(CFLAGS) -o dp_bottom_up_fibonacci dp_bottom_up_fibonacci.c

dp_top_down_fibonacci: dp_top_down_fibonacci.c
	$(CC) $(CFLAGS) -o dp_top_down_fibonacci dp_top_down_fibonacci.c

lint: # https://github.com/cpplint/cpplint
	cpplint --filter=-readability/casting,-legal/copyright,-runtime/arrays *.c

clean:
	$(RM) $(TARGET)