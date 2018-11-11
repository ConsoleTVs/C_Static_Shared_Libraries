#include "../library/calculator.h"
#include <stdio.h>

int main()
{
    printf("Testing some calculator operations...\n");
    printf("10 + 10: %d\n", add(10, 10));
    printf("10 - 10: %d\n", sub(10, 10));
    printf("10 * 10: %d\n", mul(10, 10));
    printf("10 / 10: %d\n", div(10, 10));
}
