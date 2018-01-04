#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
int main() 
{
    int N, i, j;
    scanf("%d", &N);
    float sum=0, mean, diff, squareSum=0, variance, stdDvn;
    long values[N];
    for (i=0; i<N; i++) 
    {
        scanf ("%ld", &values[i]);
        sum = sum + values[i];       
    }
    mean = sum/N;
    for (j=0; j<N; j++) 
    {
        diff = mean - values[j];
        squareSum = squareSum + (diff*diff);       
    }
    variance = squareSum/N;
    stdDvn = sqrt(variance);
    printf("%.1f", stdDvn);
    return 0;
}
