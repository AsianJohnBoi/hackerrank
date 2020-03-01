import java.util.*;
import java.io.*;

class Solution{
    public static void main(String []argh){
        Scanner in = new Scanner(System.in);
        int t=in.nextInt();
        for(int i=0;i<t;i++){
            int a = in.nextInt();
            int b = in.nextInt();
            int n = in.nextInt();

            int values[] = new int[n];
            int mul = 1;
            int total = a;
            for (int j = 0; j < n; j++) {
                total += mul * b;
                values[j] = total;
                mul *= 2;
            }

            for (int j = 0; j < n; j++) {
                System.out.print(values[j] + " ");
            }
            System.out.println("");

        }
        in.close();        
    }
}