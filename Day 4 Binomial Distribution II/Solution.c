#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
int main() 
{
    float accept, reject, result1, result2, accept10, accept9, accept8, reject2;
    reject = 0.12;
    accept = 1- reject;
    accept10 = pow(accept, 10);
    accept9 = pow(accept, 9);
    accept8 = pow(accept, 8);
    reject2 = pow(reject, 2);
    result1 = accept10 + 10*reject*accept9 + 45*reject2*accept8;
    result2 = 1 - (accept10 + 10*reject*accept9);
    printf("%.3f\n%.3f", result1, result2);
    return 0;
}
