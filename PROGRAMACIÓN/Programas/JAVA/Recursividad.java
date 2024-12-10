/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package recursividad;

/**
 *
 * @author jmrivera
 */
public class Recursividad {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
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
                default:
                //nada que hacer. 
            }
            Entrada.leerCadena("\nPulse INTRO para continuar...");
            opcion = menu();
        }
        System.out.println("\nFin del programa");
    }

    public static int menu() {
        System.out.println("");
        System.out.println("Elige una opcion:");
        System.out.println();
        System.out.println("1.- MCD de a y b");
        System.out.println("2.- Potencia a^b");
        System.out.println("3.- Imprimir desde N hasta 1");
        System.out.println("4.- Recorrer Vector Recursivo");
        System.out.println("5.- Ordenar Recursivo");
        System.out.println("6.- Factorial de n");
        System.out.println("0.- Salir");
        System.out.println();
        int op = Entrada.leerEntero("Introduzca opción: ");
        return op;
    }

    /**
     * Crear una función recursiva que calcule el MCD de dos número por el
     * método de Euclides. El método de Euclides es el siguiente: -Se divide el
     * número mayor entre el menor. -Si la división es exacta, el divisor es el
     * MCD. -Si la división no es exacta, dividimos el divisor entre el resto
     * obtenido y se continúa de esta forma hasta obtener una división exacta,
     * siendo el último divisor el MCD. Crea un programa principal que lea dos
     * números enteros y muestre el MCD.
     */
    public static void ejercicio1() {
        System.out.println("MCD de a y b");
        int a = Entrada.leerEntero("a:");
        int b = Entrada.leerEntero("b:");
        System.out.println("El MCD de " + a + " y " + b + " es: " + mcd(a, b));
    }

    /**
     *
     * @param a
     * @param b
     * @return el mcd de a y b
     */
    public static int mcd(int a, int b) {
        if (a % b == 0) {
            return b;
        } else {
            return mcd(b, a % b);
        }
    }

    /**
     * Realizar un algoritmo que calcule a^b de forma recursiva.
     */
    public static void ejercicio2() {
        System.out.println("Calcula a^b de forma recursiva");
        int a = Entrada.leerEntero("a:");
        int b = Entrada.leerEntero("b:");
        System.out.println(a + " elevado a " + b + " es: " + potencia(a, b));
    }

    /**
     *
     * @param a
     * @param b
     * @return "a" elevado a "b"
     */
    public static double potencia(int a, int b) {
        if (b >= 0) {
            if (b == 0) {
                return 1;
            } else {
                return a * potencia(a, b - 1);
            }
        } else {
            b = -b;
            return 1 / potencia(a, b);
        }
    }

    /**
     * Escribir una función recursiva que imprima por pantalla todos los nº
     * desde un nº introducido por teclado hasta 1.
     */
    public static void ejercicio3() {
        System.out.println("Imprimir desde N hasta 1");
        int n = Entrada.leerEntero("N:");
        imprimirR(n);
        System.out.println("");
        imprimirD(n);
    }

    /**
     * Imprime los números desde "n" hasta 1
     *
     * @param n
     */
    public static void imprimirR(int n) {
        if (n > 0) {
            System.out.print(n + " ");
            imprimirR(n - 1);
        }
    }
    /**
     * Imprime los números desde 1 hasta "n"
     *
     * @param n
     */
    public static void imprimirD(int n) {
        if (n > 0) {
            imprimirD(n - 1);
            System.out.print(n + " ");
        }
    }

    /**
     * Realizar un programa que utilice una función recursiva para recorrer un
     * vector. Deberá utilizar también otra función recursiva para rellenar
     * dicho vector.
     */
    public static void ejercicio4() {
        int[] v1 = new int[10];
        System.out.println("Rellenar y recorrer un vector recursivamente");
        rellenarVector(v1, v1.length);
        mostrarVector(v1, v1.length);
    }

    /**
     *
     * @param vector
     * @param tam
     */
    public static void rellenarVector(int[] vector, int tam) {
        if (tam > 0) {
            rellenarVector(vector, tam - 1);
            vector[tam - 1] = tam - 1;
        }
    }

    /**
     *
     * @param vector
     * @param tam
     */
    public static void mostrarVector(int[] vector, int tam) {
        if (tam > 0) {
            mostrarVector(vector, tam - 1);
            System.out.print(vector[tam - 1] + " ");
        }
    }

    /**
     * Escribir una función recursiva que ordene de menor a mayor un vector de
     * enteros basándose en la siguiente idea: coloque el elemento mayor en la
     * última posición, y luego ordene el resto del vector con una llamada
     * recursiva.
     */
    public static void ejercicio5() {
        int[] v = new int[10];
        vectorAleatorio(v, v.length);
        System.out.println("Generamos el siguienee vector:");
        mostrarVector(v, v.length);
        System.out.println("");
        System.out.println("Y ahora lo ordenamos recursivamente:");
        ordenarVector(v, v.length);
        mostrarVector(v, v.length);
    }

    /**
     *
     * @param vector
     * @param tam
     */
    public static void ordenarVector(int[] vector, int tam) {
        int mayor = tam - 1;
        if (tam > 0) {
            // busco la posisicón en la que está el mayor
            for (int i = tam - 2; i >= 0; i--) {
                if (vector[i] > vector[mayor]) {
                    mayor = i;
                }
            }
            //Intercambio el valor mayor con el de la última posición
            int aux = vector[tam - 1];
            vector[tam - 1] = vector[mayor];
            vector[mayor] = aux;
            // nueva llamada recursiva
            ordenarVector(vector, tam - 1);
        }
    }

    /**
     *
     * @param vector
     * @param tam
     */
    public static void vectorAleatorio(int[] vector, int tam) {
        if (tam > 0) {
            vectorAleatorio(vector, tam - 1);
            vector[tam - 1] = (int) (Math.random() * 99 + 1);
        }
    }

    public static void ejercicio6() {
        System.out.println("Factorial de n:");
        int n = Entrada.leerEntero("n:");
        while (n < 0) {
            n = Entrada.leerEntero("Error: es negativo");
        }
        System.out.println("El factorial de " + n + " es: " + factorial(n));
    }

    /**
     *
     * @param num
     * @return
     */
    public static long factorial(int num) {
        if (num == 0) {
            return 1;
        } else {
            return num * factorial(num - 1);
        }
    }

}
