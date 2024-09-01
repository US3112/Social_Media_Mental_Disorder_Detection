/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ActionPage;

/**
 *
 * @author Kavi Raja
 */
import java.util.Scanner;

public class Percentage {

    public int getPercentage(int a, int b) {

        int percentage;
        float total_marks;
        float scored;
        System.out.println("Total Valus is : " + a);
        System.out.println("Total abNmsg : " + b);
        total_marks = a;
        scored = b;
//        Scanner sc = new Scanner(System.in);
//        System.out.println("Enter your marks ::");
//        scored = sc.nextFloat();

//        System.out.println("Enter total marks ::");
//        total_marks = sc.nextFloat();

//        percentage = (int) ((scored / total_marks) * 100);
        percentage = (int) ((scored / total_marks) * 100);

        System.out.println("Percentage ::" + percentage);


        return percentage;
    }
}
