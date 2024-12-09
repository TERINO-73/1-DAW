/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package ejerciciosvectores;

/**
 *
 * @author jmrivera
 */
public class EjerciciosVectores {

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
        System.out.println("1.- Pedir 5 notas.");
        System.out.println("2.- Vector con los 20 primeros pares.");
        System.out.println("3.- 100 tiradas de dados.");
        System.out.println("4.- 100 notas: aprobados y suspensos.");
        System.out.println("5.- 100 notas: SUS, SUF, B, N y SOB.");
        System.out.println("6.- 10 primeros impares al revés.");
        System.out.println("");
        System.out.println("0.- Salir");
        System.out.println();
        int op = Entrada.leerEntero("Introduzca opción: ");
        return op;
    }

    /**
     * Diseñar un algoritmo que pida 5 notas que se almacenaran en un array y
     * calcule las notas máxima, mínima y media . Para ello diseña las
     * funciones: Rellenar(vector, tam) que no devuelve nada y las funciones
     * Maximo(vector, tam), Minimo(vector, tam) y Media(vector, tam) que
     * devolverán nota máxima, mínima y la media respectivamente.
     */
    public static void ejercicio1() {
        System.out.print("Ejercicio 1: ");
        System.out.println("Diseñar un algoritmo que pida 5 notas que se almacenaran en un array y\ncalcule las notas máxima, mínima y media");
        int[] notas = new int[5];
        rellenar(notas);
        System.out.println("La nota máxima es: " + maximo(notas));
        System.out.println("La nota mínima es: " + minimo(notas));
        System.out.println("La nota media es: " + media(notas));
    }

    /**
     * Devuelve el valor máximo del vector
     *
     * @param vector
     * @return
     */
    public static int maximo(int[] vector) {
        int max = vector[0];
        for (int i = 0; i < vector.length; i++) {
            if (vector[i] > max) {
                max = vector[i];
            }
        }
        return max;
    }

    /**
     * Devuelve el valor mínimo del vector
     *
     * @param vector
     * @return
     */
    public static int minimo(int[] vector) {
        int min = vector[0];
        for (int i = 0; i < vector.length; i++) {
            if (vector[i] < min) {
                min = vector[i];
            }
        }
        return min;
    }

    /**
     * Devuelve el valor medio del vector
     *
     * @param vector
     * @return
     */
    public static float media(int[] vector) {
        int suma = 0;
        for (int i = 0; i < vector.length; i++) {
            suma += vector[i];
        }
        return (float) suma / vector.length;
    }

    /**
     * Rellena el vector por teclado
     *
     * @param vector
     */
    public static void rellenar(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            vector[i] = Entrada.leerEntero("Nota " + (i + 1) + ": ");
        }
    }

    /**
     * Diseñar un algoritmo que cree un vector de 20 elementos llamado pares, lo
     * rellene con los 20 primeros números pares y muestre su contenido: crear
     * las funciones Rellenar y Mostrar, correspondientes.
     */
    public static void ejercicio2() {
        System.out.print("Ejercicio 2: ");
        System.out.println("Diseñar un algoritmo que cree un vector de 20 elementos llamado pares, lo\n rellene con los 20 primeros números pares y muestre su contenido");
        int[] pares = new int[20];
        rellenarPares(pares);
        mostrar(pares);
    }

    /**
     * Rellena con los primeros valores pares
     *
     * @param vector
     */
    public static void rellenarPares(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            vector[i] = i * 2;
        }
    }

    /**
     * Muestra el contenido de un vector
     *
     * @param vector
     */
    public static void mostrar(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            System.out.print(vector[i] + " ");
        }
        System.out.println("");
    }

    /**
     * Diseñar un algoritmo que cree un vector de 100 elementos, almacene en él
     * las tiradas de un dado (recuerda la función azar ( n ) ). Por último
     * deberá mostrar cuantas veces ha aparecido cada punto del dado. Diseñar la
     * función Tiradas que rellene el vector y la función ContarPunto(vector,
     * punto, tam) que devolverá cuantas veces aparece en el vector el valor
     * punto.
     */
    public static void ejercicio3() {
        System.out.print("Ejercicio 3: ");
        System.out.println("Almacena las 100 tiradas de un dado y muestra cuantas veces ha aparecido cada punto del dado");
        int[] tiradas = new int[100];
        tiradas(tiradas);
        for (int i = 1; i <= 6; i++) {
            System.out.println(contarPunto(tiradas, i) + " tiradas del punto " + i);
        }
    }

    /**
     * Rellena el vector con las tiradas de un dado
     *
     * @param vector
     */
    public static void tiradas(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            vector[i] = (int) (Math.random() * 6 + 1);
        }
    }

    /**
     * Cuenta las ocurrencias de un punto en el vector
     * @param vector
     * @param punto valor a contar
     * @return cuantas veces aparece el punto
     */
    public static int contarPunto(int[] vector, int punto) {
        int contador = 0;
        for (int i = 0; i < vector.length; i++) {
            if (vector[i] == punto) {
                contador++;
            }
        }
        return contador;
    }

    /**
     * Diseñar un algoritmo que cree un vector de 100 elementos, almacene en él
     * 100 notas generadas al azar (recuerda la función azar ( n ) ). Por último
     * deberá mostrar cuantos aprobados y cuantos suspensos hay. Igual que el
     * anterior con las funciones CuentaAprobados y CuentaSuspensos
     */
    public static void ejercicio4() {
        System.out.print("Ejercicio 4: ");
        System.out.println("Genera 100 notas al azar y muestra cuantos aprobados y cuantos suspensos hay.");
        int[] notas = new int[100];
        rellenaNotas(notas);
        mostrar(notas);
        System.out.println("Aprobados: " + cuentaAprobados(notas));
        System.out.println("Suspensos: " + cuentaSuspensos(notas));
    }

    /**
     * Rellena el vector con notas al azar
     *
     * @param vector
     */
    public static void rellenaNotas(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            vector[i] = (int) (Math.random() * 11);
        }
    }

    /**
     * Cuenta las notas aprobadas del vector
     *
     * @param vector
     * @return
     */
    public static int cuentaAprobados(int[] vector) {
        int contador = 0;
        for (int i = 0; i < vector.length; i++) {
            if (vector[i] >= 5) {
                contador++;
            }
        }
        return contador;
    }

    /**
     * Cuenta las notas suspensas del vector
     *
     * @param vector
     * @return
     */
    public static int cuentaSuspensos(int[] vector) {
        int contador = 0;
        for (int i = 0; i < vector.length; i++) {
            if (vector[i] < 5) {
                contador++;
            }
        }
        return contador;
    }

    /**
     * Diseñar un algoritmo como el anterior que muestre cuantos suspensos,
     * suficientes, bien, notables y sobresalientes hay. En este caso crearemos
     * la función Rellenar del ejercicio anterior y una función MostrarNotas que
     * mostrará cuantos suspensos, suficientes, bien, notables y sobresalientes
     * hay.
     */
    public static void ejercicio5() {
        System.out.print("Ejercicio 5: ");
        System.out.println("Genera 100 notas al azar y muestra cuantos suspensos, suficientes, bien, notables y sobresalientes hay.");
        int[] notas = new int[100];
        rellenaNotas(notas);
        mostrarNotas(notas);
    }

    /**
     * Muestra el número de , suficientes, bien, notables y sobresalientes
     * que hay en el vector
     *
     * @param vector
     */
    public static void mostrarNotas(int[] vector) {
        int cSuspenso = 0, cSuficiente = 0, cBien = 0, cNotable = 0, cSobresaliente = 0;
        for (int i = 0; i < vector.length; i++) {
            switch (vector[i]) {
                case 5:
                    cSuficiente++;
                    break;
                case 6:
                    cBien++;
                    break;
                case 7:
                case 8:
                    cNotable++;
                    break;
                case 9:
                case 10:
                    cSobresaliente++;
                    break;
                default:
                    cSuspenso++;
            }
        }
        System.out.println("Suspenso: " + cSuspenso);
        System.out.println("Suficiente: " + cSuficiente);
        System.out.println("Bien: " + cBien);
        System.out.println("Notable: " + cNotable);
        System.out.println("Sobresaliente: " + cSobresaliente);
    }

    /**
     * Diseñar un algoritmo que cree un vector de 10 elementos, lo rellene con
     * los 10 primeros números impares y muestre su contenido en orden inverso.
     * Diseñar la correspondiente funcion RellenarImpar y MostrarAlReves
     */
    public static void ejercicio6() {
        System.out.print("Ejercicio 6: ");
        System.out.println("Genera un vector con los 10 primeros números impares y muestre su contenido en orden inverso.");
        int[] impares = new int[10];
        rellenarImpar(impares);
        mostrarAlReves(impares);
    }

    /**
     * Rellena con los primeros valores impares
     *
     * @param vector
     */
    public static void rellenarImpar(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            vector[i] = i * 2 + 1;
        }
    }

    /**
     * Muestra el contenido de un vector en orden inverso
     *
     * @param vector
     */
    public static void mostrarAlReves(int[] vector) {
        for (int i = vector.length - 1; i >= 0; i--) {
            System.out.print(vector[i] + " ");
        }
        System.out.println("");
    }

}
