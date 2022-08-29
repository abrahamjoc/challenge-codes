## Factorial Sequence

This exercise is the most famous exercises to explain how `Recursion` works.

This exercise was resolved generating 5 ways:
- For Loop.
- Recursion.
- Recursion with static variable.
- Dynamic Programming using the bottom-up strategy.
- Dynamic Programming using the top-down strategy.

#### How to compile:
```shell
make
```

### Exercise Table:
| N   | Exercise                                         | Description                                                              | Efficiency | Run                           |
|-----|--------------------------------------------------|--------------------------------------------------------------------------|------------|-------------------------------|
| 1   | For Loop                                         | *Factorial using for loop with accumulator variable.*                    | EXCELLENT  | `./for_factorial N`           |
| 2   | Recursion                                        | *Factorial using recursion.*                                             | GOOD       | `./recursive_factorial N`     |
| 3   | Recursion with static variable                   | *Factorial using recursion with static variable.*                        | GOOD       | `./static_factorial N`        |
| 4   | Dynamic Programming using the Bottom-Up strategy | *Factorial using DP where you construct the solution in an array.*       | REGULAR    | `./dp_bottom_up_factorial N`  |
| 5   | Dynamic Programming using the Top-Down strategy  | *Factorial using DP where you construct the solution using memoization.* | EXCELLENT  | `./dp_top_down_factorial N`   |

### Topics, Concepts and References of Interest:
| Topic                         | Link                                                        |
|-------------------------------|-------------------------------------------------------------|
| Factorial                     | https://en.wikipedia.org/wiki/Factorial                     |
| Recursion                     | https://en.wikipedia.org/wiki/Recursion_(computer_science)  |
| Memoization                   | https://en.wikipedia.org/wiki/Memoization                   |
| Dynamic Programming           | https://en.wikipedia.org/wiki/Dynamic_programming           |
| Top-down and Bottom-up design | https://en.wikipedia.org/wiki/Top-down_and_bottom-up_design |
