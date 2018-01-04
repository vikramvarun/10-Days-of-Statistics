#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
int main() 
{
    int N, i, j, den=0;
    float average, num=0;
    scanf("%d\n", &N);
    int values[N];
    int weights[N];
    for (i=0; i<N; i++) 
    { scanf ("%d ", &values[i]); }
    for (j=0; j<N; j++) 
    { scanf ("%d ", &weights[j]); 
      den = den + weights[j];
      num = num +  values[j]*weights[j];
    }
    average = num/den;
    printf("%.1lf", average);
    return 0;
}
