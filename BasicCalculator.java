import java.util.Scanner;

public class BasicCalculator {
    public static void main(String[] args) {
        double num1, num2;

        Scanner sc = new Scanner(System.in);

        System.out.println("Enter the numbers:");
        num1 = sc.nextDouble();
        num2 = sc.nextDouble();

        System.out.println("Enter the operator (+,-,*,/):");
        char op = sc.next().charAt(0);

        double o = 0;

        switch (op) {
            case '+':
                o = num1 + num2;
                break;
            case '-':
                o = num1 - num2;
                break;
            case '*':
                o = num1 * num2;
                break;
            case '/':
                if (num2 != 0)
                    o = num1 / num2;
                else {
                    System.out.println("Error: Cannot divide by zero");
                    return;
                }
                break;
            default:
                System.out.println("You entered the wrong input.");
                return;
        }

        System.out.println("The final result:");
        System.out.println(num1 + " " + op + " " + num2 + " = " + o);
    }
}

