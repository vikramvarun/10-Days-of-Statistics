#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
int main() 
{
    float boy, girl, pBoy, pGirl, result, boy6, boy5, boy4, girl2;
    scanf ("%f %f", &girl, &boy); 
    pBoy = boy/(boy+girl);
    pGirl = 1- pBoy;
    boy6 = pow(pBoy, 6);
    boy5 = pow(pBoy, 5);
    boy4 = pow(pBoy, 4);
    girl2 = pow(pGirl, 2);
    result = 1 - (boy6 + 6*boy5*pGirl + 15*boy4*girl2);
    printf("%.3f", result);
    return 0;
}
