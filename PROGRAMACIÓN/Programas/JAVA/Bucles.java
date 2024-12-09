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
     * M�todo que muestr el men� y pide por teclado la opci�n elegida
     *
     * @return el valor de la opci�n elegida
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
        int op = Entrada.leerEntero("Introduzca opci�n: ");
        return op;
    }

    /**
     * Dado un n�mero positivo por el usuario, mostrar todos los n�meros que
     * hay desde 0 hasta dicho n�mero inclusive.
     */
    public static void ejercicio1() {
        System.out.print("Ejercicio 1: ");
        System.out.println("Dado un n�mero positivo por el usuario, mostrar todos los n�meros que hay desde 0 hasta dicho n�mero inclusive.");
        int num = Entrada.leerEntero("Introduzca un n�mero positivo");
        for (int i = 0; i <= num; i++) {
            System.out.print(i + " ");
        }
    }

    /**
     * Dado dos n�meros positivos (el primero m�s peque�o que el segundo),
     * mostrar todos los n�meros que hay desde el primero hasta el segundo
     * (ambos inclusive).
     */
    public static void ejercicio2() {
        System.out.print("Ejercicio 2: ");
        System.out.println("Dado dos n�meros positivos (el primero m�s peque�o que el segundo), mostrar todos los n�meros que hay desde el primero hasta el segundo (ambos inclusive).");
        int num1 = Entrada.leerEntero("Introduzca un n�mero positivo");
        int num2 = Entrada.leerEntero("Introduzca un n�mero mayor que el anterior");
        for (int i = num1; i <= num2; i++) {
            System.out.print(i + " ");
        }
    }

    /**
     * Dados dos n�meros positivos (el primero m�s peque�o que el segundo),
     * mostrar la suma de todos los n�meros desde el primero hasta el segundo
     * (ambos inclusive).
     */
    public static void ejercicio3() {
        System.out.print("Ejercicio 3: ");
        System.out.println("Dados dos n�meros positivos (el primero m�s peque�o que el segundo), mostrar la suma de todos los n�meros desde el primero hasta el segundo(ambos inclusive)");
        int suma = 0;
        int num1 = Entrada.leerEntero("Introduzca un n�mero positivo");
        int num2 = Entrada.leerEntero("Introduzca un n�mero mayor que el anterior");
        for (int i = num1; i <= num2; i++) {
            suma += i;
        }
        System.out.print("La suma de los n�meros desde " + num1 + " hasta " + num2 + " es: " + suma);
    }

    /**
     * Dado dos n�meros positivos (el primero m�s peque�o que el segundo),
     * mostrar todos los n�meros, desde el primero hasta el segundo, que sean
     * divisores de un n�mero concreto (dado tambi�n por el usuario).
     */
    public static void ejercicio4() {
        System.out.print("Ejercicio 4: ");
        System.out.println("Dado dos n�meros positivos (el primero m�s peque�o que el segundo), mostrar todos los n�meros, desde el primero hasta el segundo, que sean divisores de un n�mero concreto (dado tambi�n por el usuario)");
        int num1 = Entrada.leerEntero("Introduzca un n�mero positivo");
        int num2 = Entrada.leerEntero("Introduzca un n�mero mayor que el anterior");
        int num3 = Entrada.leerEntero("Introduzca otro n�mero");
        for (int i = num1; i <= num2; i++) {
            if (i % num3 == 0) {
                System.out.println(i + " es divisible por " + num3);
            }
        }
    }

    /**
     * Dados dos n�meros positivos (el primero m�s peque�o que el segundo),
     * mostrar la suma de todos los n�meros, desde el primero hasta el segundo,
     * que sean divisores de un n�mero concreto (dado tambi�n por el usuario)
     */
    public static void ejercicio5() {
        System.out.print("Ejercicio 5: ");
        System.out.println("Dados dos n�meros positivos (el primero m�s peque�o que el segundo)," +
        " mostrar la suma de todos los n�meros, desde el primero hasta el segundo," +
        " que sean divisores de un n�mero concreto (dado tambi�n por el usuario)");
        int suma = 0;
        int num1 = Entrada.leerEntero("Introduzca un n�mero positivo");
        int num2 = Entrada.leerEntero("Introduzca un n�mero mayor que el anterior");
        int num3 = Entrada.leerEntero("Introduzca otro n�mero");
        for (int i = num1; i <= num2; i++) {
            if (i % num3 == 0) {
                suma += i;
            }
        }
        System.out.print("La suma de los n�meros divisibles por " + num3 + " es: " + suma);
    }

    /**
     * Leer un n�mero e indicar si es positivo o negativo. El proceso se
     * repetir� hasta que se introduzca un 0.
     */
    public static void ejercicio6() {
        System.out.print("Ejercicio 6: ");
        System.out.println("Leer un n�mero e indicar si es positivo o negativo. El proceso se repetir� hasta que se introduzca un 0.");
        int num = Entrada.leerEntero("Introduzca un n�mero(0 para terminar)");
        while (num != 0) {
            if (num > 0) {
                System.out.println("Positivo");
            } else {
                System.out.println("Negativo");
            }
            num = Entrada.leerEntero("Introduzca un n�mero(0 para terminar)");
        }
    }

    /**
     * Pedir n�meros hasta que se teclee uno negativo. Una vez ocurra esto, el
     * algoritmo debe imprimir la suma de todos los n�meros introducidos a
     * excepci�n del n�mero negativo.
     */
    public static void ejercicio7() {
        System.out.print("Ejercicio 7: ");
        System.out.println("Pedir n�meros hasta que se teclee uno negativo. Una vez ocurra esto, el algoritmo debe imprimir la suma de todos los n�meros introducidos a excepci�n del n�mero negativo.");
        int suma = 0;
        int num = Entrada.leerEntero("Introduzca un n�mero(negativo para terminar)");
        while (num > 0) {
            suma += num;
            num = Entrada.leerEntero("Introduzca un n�mero(negativo para terminar)");
        }
        System.out.println("La suma de todos los n�meros positivos es: " + suma);
    }

    /**
     * Realiza un juego para adivinar un n�mero numSecreto (por ejemplo, entre
     * 0 y 20). El algoritmo debe ir pidiendo n�meros al usuario indicando si
     * es mayor o menor que numSecreto. El algoritmo acaba cuando el usuario
     * acierta el n�mero (Utilizar la funci�n Math.random()).
     */
    public static void ejercicio8() {
        System.out.print("Ejercicio 8: ");
        System.out.println("Realiza un juego para adivinar un n�mero numSecreto (por ejemplo, entre 0 y 20). El algoritmo debe ir pidiendo n�meros al usuario indicando si es mayor o menor que numSecreto. El algoritmo acaba cuando el usuario acierta el n�mero");
        int numSecreto = (int) (Math.random() * 21);
        int num = Entrada.leerEntero("Introduzca un n�mero:");
        while (num != numSecreto) {
            if (num > numSecreto) {
                System.out.println("Es mayor que el n�mero secreto.");
            } else {
                System.out.println("Es menor que el n�mero secreto.");
            }
            num = Entrada.leerEntero("Sigue intent�ndolo:");
        }
        System.out.println("Lo acertaste.");
    }

    /**
     * Pedir 10 n�meros y escribir la suma total.
     */
    public static void ejercicio9() {
        System.out.print("Ejercicio 9: ");
        System.out.println("Pedir 10 n�meros y escribir la suma total.");
        int num, suma = 0;
        for (int i = 1; i <= 10; i++) {
            num = Entrada.leerEntero("N�mero " + i + ":");
            suma += num;
        }
        System.out.println("La suma de los 10 n�meros es: " + suma);
    }

    /**
     * Pedir un n�mero N, introducir N n�meros y mostrar el m�nimo, m�ximo y
     * la media
     */
    public static void ejercicio10() {
        System.out.print("Ejercicio 10: ");
        System.out.println("Pedir un n�mero N, introducir N n�meros y mostrar el m�nimo, m�ximo y la media");
        int totalNumeros, num, min, max, suma = 0;
        totalNumeros = Entrada.leerEntero("�Cu�ntos n�meros quieres introducir?");
        num = Entrada.leerEntero("N�mero 1");
        max = min = suma = num;
        for (int i = 2; i <= totalNumeros; i++) {
            num = Entrada.leerEntero("N�mero " + i + ":");
            if (num > max) {
                max = num;
            }
            if (num < min) {
                min = num;
            }
            suma += num;
        }
        System.out.println("El m�ximo es " + max);
        System.out.println("El m�nimo es " + min);
        System.out.println("La media es " + ((float) suma / totalNumeros));
    }
    
}
