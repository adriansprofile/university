package ex_1;

import java.util.Scanner;

public class MainApp {
    public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);

        System.out.print("Lungimea: ");
        int lungimea = scan.nextInt();
        System.out.print("Latimea: ");
        int latimea = scan.nextInt();

        int aria = lungimea * latimea;
        int perimetru = (lungimea + latimea) * 2;

        System.out.println("Perimetru = " + perimetru);
        System.out.println("Aria = " + aria);

        scan.close();
    }
}