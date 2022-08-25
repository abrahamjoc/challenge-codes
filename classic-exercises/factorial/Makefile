.PHONY: clean run

CC = gcc
CFLAGS  = -g -Wall

TARGET = recursive_factorial static_factorial for_factorial dp_bottom_up_factorial dp_top_down_factorial

all: $(TARGET)

recursive_factorial: recursive_factorial.c
	$(CC) $(CFLAGS) -o recursive_factorial recursive_factorial.c

static_factorial: static_factorial.c
	$(CC) $(CFLAGS) -o static_factorial static_factorial.c

for_factorial: for_factorial.c
	$(CC) $(CFLAGS) -o for_factorial for_factorial.c

dp_bottom_up_factorial: dp_bottom_up_factorial.c
	$(CC) $(CFLAGS) -o dp_bottom_up_factorial dp_bottom_up_factorial.c

dp_top_down_factorial: dp_top_down_factorial.c
	$(CC) $(CFLAGS) -o dp_top_down_factorial dp_top_down_factorial.c

lint: # https://github.com/cpplint/cpplint
	cpplint --filter=-readability/casting,-legal/copyright,-runtime/arrays *.c

clean:
	$(RM) $(TARGET)