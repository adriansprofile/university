package ex_3;

import java.util.Scanner;

public class MainApp {
    public static void main(String[] args) {

        Scanner scanner = new Scanner(System.in);

        System.out.print("Introduceti un numar natural: ");
        int n = scanner.nextInt();

        if (n == 0) {
            System.out.println("Numarul 0 are o infinitate de divizori");
        } else if (n == 1) {
            System.out.println("Numarul 1 are un divizor, nu este nici prim, nici compus");
        } else {
            System.out.println("Divizorii lui " + n + " sunt: ");
            int counter = 0;

            for (int i = 1; i <= n; i++) {
                if (n % i == 0) {
                    System.out.print(i + " ");
                    counter++;
                }
            }

            System.out.println();
            if (counter == 2) {
                System.out.println("Numarul " + n + " este numar prim");
            } else {
                System.out.println("Numarul " + n + " este numar compus");
            }
        }

        scanner.close();
    }
}