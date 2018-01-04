#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
int main() 
{   int N, i, j, k, x, y, z, min_index, tmp, Ind1, Ind3, sum = 0, frequency=0;
    float oneInd, twoInd, threeInd, one, three;
    scanf("%d", &N);
    int array[N];
    int freq[N];
    
    for (i=0; i<N; i++) 
    { scanf ("%d", &array[i]); }
    
    for (x=0; x<N; x++)
    {   scanf ("%d", &freq[x]);
        sum = sum + freq[x]; }
    int finalArray[sum];
    for (y=0; y<N; y++) 
    {   for (z=frequency; z<frequency+freq[y]; z++)
        { finalArray[z] = array[y]; }
        frequency = frequency + freq[y]; }
 
    for (j=0; j<sum-1; j++) 
    {   min_index = j;
        for (k=j+1; k<sum; k++) 
        {  if (finalArray[k] < finalArray[min_index]) 
           { min_index = k; } }
        tmp = finalArray[min_index];
        finalArray[min_index] = finalArray[j];
        finalArray[j] = tmp; }
     
    twoInd = (sum+1)/2.0;
    oneInd = ((int) (twoInd + 0.5))/2.0;
    threeInd = 2*twoInd - oneInd;
    Ind1 = oneInd;
    Ind3 = threeInd;
    one = ( (oneInd - Ind1) * finalArray[Ind1]) + ((1 + Ind1 - oneInd) * finalArray[Ind1-1] );
    three = ( (threeInd - Ind3) * finalArray[Ind3]) + ((1 + Ind3 - threeInd) * finalArray[Ind3-1] );
    printf("%.1f", three-one);
    return 0; }
