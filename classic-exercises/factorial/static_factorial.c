#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>


/*
 *  This code explains how works factorial using recursion with static variable. 
 *  How to run: ./static_factorial N
 */


/*
 * Factorial: calculator
 */
double factorial(int n) {
    if ( n == 0 ) return -1;
    static double result = 1;
    result = result * n;
    factorial(n-1);
    return result;
}

/*
 * CalcFactorial: wrapper function to call factorial calculator and show how many time take the calculation.
 */
void calcFactorial(int n) {
    clock_t bt = clock();
    double r = factorial(n);
    clock_t et = clock();

    double secs = difftime(et, bt) / CLOCKS_PER_SEC;
    printf("f(%d)=%.0f executed in %.0f secs.\n", n, r, secs);
}

int main(int argc, char* argv[]) {
    if ( argc < 2 ) {
        fprintf(stderr, "Usage: %s N\n", argv[0]);
        return -1;
    }

    int n = atoi(argv[argc-1]);
    
    calcFactorial(n);

    return 0;
}
