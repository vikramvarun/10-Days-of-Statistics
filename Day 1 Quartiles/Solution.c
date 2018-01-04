#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
int main() 
{
    int N, i, j, k, min_index, tmp, Ind1, Ind2, Ind3;
    float oneInd, twoInd, threeInd, one, two, three;
    scanf("%d", &N);
    int array[N];
    for (i=0; i<N; i++) 
    { scanf ("%d", &array[i]); }
    for (j=0; j<N-1; j++) 
    {
        min_index = j;
        for (k=j+1; k<N; k++) 
        {
           if (array[k] < array[min_index]) 
           { min_index = k; }
        }
        tmp = array[min_index];
        array[min_index] = array[j];
        array[j] = tmp;
    }
    twoInd = (N+1)/2.0;
    oneInd = ((int) (twoInd + 0.5))/2.0;
    threeInd = 2*twoInd - oneInd;
    Ind1 = oneInd;
    Ind2 = twoInd;
    Ind3 = threeInd;
    one = ( (oneInd - Ind1) * array[Ind1]) + ((1 + Ind1 - oneInd) * array[Ind1-1] );
    two = ( (twoInd - Ind2) * array[Ind2]) + ((1 + Ind2 - twoInd) * array[Ind2-1] );
    three = ( (threeInd - Ind3) * array[Ind3]) + ((1 + Ind3 - threeInd) * array[Ind3-1] );
    printf("%.f\n%.f\n%.f\n", one, two, three);
    return 0;
}
