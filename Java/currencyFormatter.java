import java.text.NumberFormat;
import java.util.Currency;
import java.util.Locale;
import java.util.Scanner;

public class Solution {

	public static void main(String[] args)
	   {
		Scanner scanner = new Scanner(System.in);
        double payment = scanner.nextDouble();
        scanner.close();

        Double currencyAmount = 123456789.555;

        String us = "";
        String india = "";
        String china = "";
        String france = "";

        Locale localeInfo[] = {Locale.US, new Locale("en", "IN"), Locale.CHINA, Locale.FRANCE};
        
        for (int i = 0; i < localeInfo.length; i++) {
            NumberFormat currencyFormatter = NumberFormat.getCurrencyInstance(localeInfo[i]);
            switch (i) {
            	case 0:
            		us += currencyFormatter.format(payment); 
            		break;
            	case 1:
            		india += currencyFormatter.format(payment); 
            		break;
            	case 2:
            		china += currencyFormatter.format(payment); 
            		break;
            	case 3:
            		france += currencyFormatter.format(payment); 
            		break;
            }
        }

        System.out.println("US: " + us);
        System.out.println("India: " + india);
        System.out.println("China: " + china);
        System.out.println("France: " + france);
	   }
		

}