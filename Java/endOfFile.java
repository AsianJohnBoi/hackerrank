import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        try {
            int lineNum = 1;
            while (sc.hasNext()) {
                String t = sc.nextLine();
                System.out.println(lineNum + " " + t);
                lineNum++;
            }
        } catch(Exception e) {
            System.out.println("Error occured reading line " + e);
        }
    }
}