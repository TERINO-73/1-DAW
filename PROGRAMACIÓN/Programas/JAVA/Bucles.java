/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package bucles;

/**
 *
 * @author jmrivera
 */
public class Bucles {

    /**
     * @param args the command line arguments
     */
 public static void main(String[] args) {
        // TODO code application logic here
        int opcion;
        opcion = menu();
        while (opcion != 0) {
            switch (opcion) {
                case 1:
                    ejercicio1();
                    break;
                case 2:
                    ejercicio2();
                    break;
                case 3:
                    ejercicio3();
                    break;
                case 4:
                    ejercicio4();
                    break;
                case 5:
                    ejercicio5();
                    break;
                case 6:
                    ejercicio6();
                    break;
                case 7:
                    ejercicio7();
                    break;
                case 8:
                    ejercicio8();
                    break;
                case 9:
                    ejercicio9();
                    break;
                case 10:
                    ejercicio10();
                    break;
                default:
                // Nada que hacer
            }
            Entrada.leerCadena("\nPulse INTRO para continuar...");
            opcion = menu();
        }
        System.out.println("\nFin del programa");
    }

    /**
     * Método que muestr el menú y pide por teclado la opción elegida
     *
     * @return el valor de la opción elegida
     */
    public static int menu() {
        // TODO code application logic here
        System.out.println("Menu");
        System.out.println("----");
        System.out.println();
        System.out.println("1.- Ejercicio 1");
        System.out.println("2.- Ejercicio 2");
        System.out.println("3.- Ejercicio 3");
        System.out.println("4.- Ejercicio 4");
        System.out.println("5.- Ejercicio 5");
        System.out.println("6.- Ejercicio 6");
        System.out.println("7.- Ejercicio 7");
        System.out.println("8.- Ejercicio 8");
        System.out.println("9.- Ejercicio 9");
        System.out.println("10.- Ejercicio 10");
        System.out.println("0.- Salir");
        System.out.println();
        int op = Entrada.leerEntero("Introduzca opción: ");
        return op;
    }

    /**
     * Dado un número positivo por el usuario, mostrar todos los números que
     * hay desde 0 hasta dicho número inclusive.
     */
    public static void ejercicio1() {
        System.out.print("Ejercicio 1: ");
        System.out.println("Dado un número positivo por el usuario, mostrar todos los números que hay desde 0 hasta dicho número inclusive.");
        int num = Entrada.leerEntero("Introduzca un número positivo");
        for (int i = 0; i <= num; i++) {
            System.out.print(i + " ");
        }
    }

    /**
     * Dado dos números positivos (el primero más pequeño que el segundo),
     * mostrar todos los números que hay desde el primero hasta el segundo
     * (ambos inclusive).
     */
    public static void ejercicio2() {
        System.out.print("Ejercicio 2: ");
        System.out.println("Dado dos números positivos (el primero más pequeño que el segundo), mostrar todos los números que hay desde el primero hasta el segundo (ambos inclusive).");
        int num1 = Entrada.leerEntero("Introduzca un número positivo");
        int num2 = Entrada.leerEntero("Introduzca un número mayor que el anterior");
        for (int i = num1; i <= num2; i++) {
            System.out.print(i + " ");
        }
    }

    /**
     * Dados dos números positivos (el primero más pequeño que el segundo),
     * mostrar la suma de todos los números desde el primero hasta el segundo
     * (ambos inclusive).
     */
    public static void ejercicio3() {
        System.out.print("Ejercicio 3: ");
        System.out.println("Dados dos números positivos (el primero más pequeño que el segundo), mostrar la suma de todos los números desde el primero hasta el segundo(ambos inclusive)");
        int suma = 0;
        int num1 = Entrada.leerEntero("Introduzca un número positivo");
        int num2 = Entrada.leerEntero("Introduzca un número mayor que el anterior");
        for (int i = num1; i <= num2; i++) {
            suma += i;
        }
        System.out.print("La suma de los números desde " + num1 + " hasta " + num2 + " es: " + suma);
    }

    /**
     * Dado dos números positivos (el primero más pequeño que el segundo),
     * mostrar todos los números, desde el primero hasta el segundo, que sean
     * divisores de un número concreto (dado también por el usuario).
     */
    public static void ejercicio4() {
        System.out.print("Ejercicio 4: ");
        System.out.println("Dado dos números positivos (el primero más pequeño que el segundo), mostrar todos los números, desde el primero hasta el segundo, que sean divisores de un número concreto (dado también por el usuario)");
        int num1 = Entrada.leerEntero("Introduzca un número positivo");
        int num2 = Entrada.leerEntero("Introduzca un número mayor que el anterior");
        int num3 = Entrada.leerEntero("Introduzca otro número");
        for (int i = num1; i <= num2; i++) {
            if (i % num3 == 0) {
                System.out.println(i + " es divisible por " + num3);
            }
        }
    }

    /**
     * Dados dos números positivos (el primero más pequeño que el segundo),
     * mostrar la suma de todos los números, desde el primero hasta el segundo,
     * que sean divisores de un número concreto (dado también por el usuario)
     */
    public static void ejercicio5() {
        System.out.print("Ejercicio 5: ");
        System.out.println("Dados dos números positivos (el primero más pequeño que el segundo)," +
        " mostrar la suma de todos los números, desde el primero hasta el segundo," +
        " que sean divisores de un número concreto (dado también por el usuario)");
        int suma = 0;
        int num1 = Entrada.leerEntero("Introduzca un número positivo");
        int num2 = Entrada.leerEntero("Introduzca un número mayor que el anterior");
        int num3 = Entrada.leerEntero("Introduzca otro número");
        for (int i = num1; i <= num2; i++) {
            if (i % num3 == 0) {
                suma += i;
            }
        }
        System.out.print("La suma de los números divisibles por " + num3 + " es: " + suma);
    }

    /**
     * Leer un número e indicar si es positivo o negativo. El proceso se
     * repetirá hasta que se introduzca un 0.
     */
    public static void ejercicio6() {
        System.out.print("Ejercicio 6: ");
        System.out.println("Leer un número e indicar si es positivo o negativo. El proceso se repetirá hasta que se introduzca un 0.");
        int num = Entrada.leerEntero("Introduzca un número(0 para terminar)");
        while (num != 0) {
            if (num > 0) {
                System.out.println("Positivo");
            } else {
                System.out.println("Negativo");
            }
            num = Entrada.leerEntero("Introduzca un número(0 para terminar)");
        }
    }

    /**
     * Pedir números hasta que se teclee uno negativo. Una vez ocurra esto, el
     * algoritmo debe imprimir la suma de todos los números introducidos a
     * excepción del número negativo.
     */
    public static void ejercicio7() {
        System.out.print("Ejercicio 7: ");
        System.out.println("Pedir números hasta que se teclee uno negativo. Una vez ocurra esto, el algoritmo debe imprimir la suma de todos los números introducidos a excepción del número negativo.");
        int suma = 0;
        int num = Entrada.leerEntero("Introduzca un número(negativo para terminar)");
        while (num > 0) {
            suma += num;
            num = Entrada.leerEntero("Introduzca un número(negativo para terminar)");
        }
        System.out.println("La suma de todos los números positivos es: " + suma);
    }

    /**
     * Realiza un juego para adivinar un número numSecreto (por ejemplo, entre
     * 0 y 20). El algoritmo debe ir pidiendo números al usuario indicando si
     * es mayor o menor que numSecreto. El algoritmo acaba cuando el usuario
     * acierta el número (Utilizar la función Math.random()).
     */
    public static void ejercicio8() {
        System.out.print("Ejercicio 8: ");
        System.out.println("Realiza un juego para adivinar un número numSecreto (por ejemplo, entre 0 y 20). El algoritmo debe ir pidiendo números al usuario indicando si es mayor o menor que numSecreto. El algoritmo acaba cuando el usuario acierta el número");
        int numSecreto = (int) (Math.random() * 21);
        int num = Entrada.leerEntero("Introduzca un número:");
        while (num != numSecreto) {
            if (num > numSecreto) {
                System.out.println("Es mayor que el número secreto.");
            } else {
                System.out.println("Es menor que el número secreto.");
            }
            num = Entrada.leerEntero("Sigue intentándolo:");
        }
        System.out.println("Lo acertaste.");
    }

    /**
     * Pedir 10 números y escribir la suma total.
     */
    public static void ejercicio9() {
        System.out.print("Ejercicio 9: ");
        System.out.println("Pedir 10 números y escribir la suma total.");
        int num, suma = 0;
        for (int i = 1; i <= 10; i++) {
            num = Entrada.leerEntero("Número " + i + ":");
            suma += num;
        }
        System.out.println("La suma de los 10 números es: " + suma);
    }

    /**
     * Pedir un número N, introducir N números y mostrar el mínimo, máximo y
     * la media
     */
    public static void ejercicio10() {
        System.out.print("Ejercicio 10: ");
        System.out.println("Pedir un número N, introducir N números y mostrar el mínimo, máximo y la media");
        int totalNumeros, num, min, max, suma = 0;
        totalNumeros = Entrada.leerEntero("¿Cuántos números quieres introducir?");
        num = Entrada.leerEntero("Número 1");
        max = min = suma = num;
        for (int i = 2; i <= totalNumeros; i++) {
            num = Entrada.leerEntero("Número " + i + ":");
            if (num > max) {
                max = num;
            }
            if (num < min) {
                min = num;
            }
            suma += num;
        }
        System.out.println("El máximo es " + max);
        System.out.println("El mínimo es " + min);
        System.out.println("La media es " + ((float) suma / totalNumeros));
    }
    
}
