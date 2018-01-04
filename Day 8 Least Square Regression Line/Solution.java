import java.io.*;
import java.util.*;
import java.math.*;
public class Solution 
{
    public static void main(String[] args) 
    {
        Scanner in = new Scanner(System.in);
        int [][] arr = new int[5][2];
        int sumX = 0, sumY = 0;
        float meanX, meanY, xSq = 0, xy = 0, a, b, result1;
        for (int i=0; i<5; i++) 
        {
            for (int j=0; j<2; j++) 
                arr[i][j] = in.nextInt();
        }
        for (int k=0; k<5; k++) 
        {
            sumX = sumX + arr[k][0];
            sumY = sumY + arr[k][1];
            xSq = xSq + arr[k][0]*arr[k][0];
            xy = xy + arr[k][0]*arr[k][1];
        }                        
        meanX = (float) sumX/5;
        meanY = (float) sumY/5;
        b= (5*xy - (sumX*sumY))/(5*xSq - (sumX*sumX));
        a = meanY - b*meanX;
        result1 = a + b*80;
        String result = String.format("%.5g%n", result1);
        System.out.print(result);
    }
}
