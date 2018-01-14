//Solution to Problem 0.1 of 10 days of statistics
//Author: Vikram Varun
//Submitted on 22nd August 2016
//Language C

#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
int main() 
{
    int N, i, j, k, l, count, maxCount, mode, tmp, min_index, med_index, modCnt=1, modCount=1;
    float sum = 0, mean, median;
    scanf ("%d", &N);
    int elements[N];
    for (i=0; i<N; i++) 
    {
        scanf ("%d", &elements[i]);
        sum = sum + elements[i];
    }
    mean = sum/N;
    for (j=0; j<N-1; j++) 
    {
        min_index = j;
        for (k=j+1; k<N; k++) 
        {
           if (elements[k] < elements[j]) 
           { 
               min_index = k;
               tmp = elements[min_index];
               elements[min_index] = elements[j];
               elements[j] = tmp;
           }
        }
    }
    if (N%2 == 1) 
    { 
        med_index = N/2;
        median = elements[med_index];
    }
    else 
    {        
        med_index = N/2;
        median = elements[med_index] + elements[med_index-1];
        median /=2;
    }
    mode = elements[0];
    for (l=0; l<N-1; l++) 
    {
       if (elements[l] != elements [l+1]) 
       modCnt = 1; 
       else 
       modCnt+=1;
       if (modCnt > modCount)
       mode = elements[l];
       modCount = ((modCnt + modCount) + abs (modCnt - modCount))/2;
    }
    printf("%.1f\n%.1f\n%d", mean, median, mode);
    return 0;
}
