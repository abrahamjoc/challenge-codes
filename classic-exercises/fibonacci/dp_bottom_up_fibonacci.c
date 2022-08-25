#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>


/*
 *  This code explains how works fibonacci using double recursion with memoization technique. 
 *  How to run: ./dp_bottom_up_fibonacci -r N
 * 
 *  NOTE: -r flag is optional. If you use the program will calculate range fib(0..N) 
 */


/*
 * Fibonacci: calculator
 */
double fibonacci(int n) {
    double *list = (double*) malloc( (n+1) * sizeof(double) );
    list[0] = 0;
    list[1] = 1;
    for ( int i=2; i <= n; ++i )
        list[i] = list[i-2] + list[i-1];
    double r = list[n];
    free(list);
    return r;
}

/*
 * CalcFibonacci: wrapper function to call fibonacci calculator and show how many time take the calculation.
 */
void calcFibonacci(int n) {
    clock_t bt = clock();
    double r = fibonacci(n);
    clock_t et = clock();

    double secs = difftime(et, bt) / CLOCKS_PER_SEC;
    printf("f(%d)=%.0f executed in %.0f secs.\n", n, r, secs);
}

int main(int argc, char* argv[]) {
    if ( argc < 2 ) {
        fprintf(stderr, "Usage: %s [-r] N\n", argv[0]);
        return -1;
    }

    int opt;
    enum { SINGLE_MODE, RANGE_MODE } mode = SINGLE_MODE;
    while ((opt = getopt(argc, argv, "r")) != -1) {
        switch (opt) {
        case 'r': mode = RANGE_MODE; break;
        default:
            exit(1);
        }
    }

    int n = atoi(argv[argc-1]);

    int i = (mode == RANGE_MODE) ? 0 : n;
    for ( ; i <= n; ++i )
        calcFibonacci(i);

    return 0;
}
