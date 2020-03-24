import java.util.Scanner;

public class Solution {

    public static void main(String[] args) {
            Scanner sc=new Scanner(System.in);
            System.out.println("================================");
            for(int i=0;i<3;i++){
                String s1=sc.next();                
                int x=sc.nextInt();
                int spaces = 15 - s1.length();
                String s2 = "";

                System.out.print(s1 + String.format("%" + spaces + "s", ""));

                if (Integer.toString(x).length() < 3) {
                    for(int d=Integer.toString(x).length(); d < 3; d++) {
                        s2 += "0";
                    }
                    s2 += Integer.toString(x);
                    System.out.println(s2);
                } else {
                    System.out.println(Integer.toString(x));
                }
                
            }
            System.out.println("================================");

    }
}



