#include <stdio.h>

//#define NDEBUG

#include <assert.h>

long long unsigned int factorial(int n)
{
    long long unsigned int f = 1;

    assert(n >= 0);

    for (int i = 1; i <= n; i++)
       f *= i;

    return f;
}

int main(void)
{
    int num = 3;

    printf("Factorial of %d is %llu\n", num, factorial(num));

    num = 5;
    printf("Factorial of %d is %llu\n", num, factorial(num));

    num = 0;
    printf("Factorial of %d is %llu\n", num, factorial(num));

    num = -10;
    printf("Factorial of %d is %llu\n", num, factorial(num));

    return 0;
}