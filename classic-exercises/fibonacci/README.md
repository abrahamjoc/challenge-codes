## Fibonacci Sequence

This exercise is one of the most famous exercises to explain how `Recursion` works.
It's useful for explaining `Dynamic Programming` too.

This exercise was resolved generating 4 ways:
- [Recursion](./recursive_fibonacci.c#L18-L22).
- [Recursion with memoization only](./memoization_fibonacci.c#L21-L26).
- [Dynamic Programming using the bottom-up strategy](./dp_bottom_up_fibonacci.c#L18-L27).
- [Dynamic Programming using the top-down strategy](./dp_top_down_fibonacci.c#L18-L30).

**NOTE**:
This video https://www.youtube.com/watch?v=C240g6_Dsl4 of `BettaTech` reminded me how interesting this exercise is.

#### How to compile:
```shell
make
```

### Exercise Table:
| N   | Exercise                                         | Description                                                              | Efficiency | Run                          |
|-----|--------------------------------------------------|--------------------------------------------------------------------------|------------|------------------------------|
| 1   | Recursion                                        | *Fibonacci using double recursion and exploring how works.*              | BAD        | `./recursive_fibonacci N`    |
| 2   | Recursion with Memoization only                  | *Fibonacci using double recursion with memoization (cache).*             | REGULAR    | `./memoization_fibonacci N`  |
| 3   | Dynamic Programming using the Bottom-up strategy | *Fibonacci using DP where you construct the solution in an array.*       | GOOD       | `./dp_bottom_up_fibonacci N` |
| 4   | Dynamic Programming using the Top-down strategy  | *Fibonacci using DP where you construct the solution using memoization.* | EXCELLENT  | `./dp_top_down_fibonacci N`  |

### Topics, Concepts and References of Interest:
| Topic                         | Link                                                        |
|-------------------------------|-------------------------------------------------------------|
| Fibonacci                     | https://en.wikipedia.org/wiki/Fibonacci_number              |
| Recursion                     | https://en.wikipedia.org/wiki/Recursion_(computer_science)  |
| Memoization                   | https://en.wikipedia.org/wiki/Memoization                   |
| Dynamic Programming           | https://en.wikipedia.org/wiki/Dynamic_programming           |
| Top-down and Bottom-up design | https://en.wikipedia.org/wiki/Top-down_and_bottom-up_design |
