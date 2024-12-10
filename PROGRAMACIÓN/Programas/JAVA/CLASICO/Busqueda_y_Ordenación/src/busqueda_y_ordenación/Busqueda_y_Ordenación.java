/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package Busqueda_y_Ordenación;

import bucles1.Entrada;

/**
 *
 * @author JMRivera
 */
public class Busqueda_y_Ordenación {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here

        int op;
        do {
            op = menu();
            switch (op) {
                case 1 ->
                    ejercicio1();
                case 2 ->
                    ejercicio2();
                case 3 ->
                    ejercicio1();
                case 4 ->
                    ejercicio1();
                case 5 ->
                    ejercicio1();
                case 6 ->
                    ejercicio1();

                default ->
                    op = 0;

                // Nada que hacer
            }
            if (op != 0) {
                System.out.print("\nPulse intro para continuar...");
                Entrada.leerTeclado();
            } else {
                System.out.println("\nFin del programa.");
            }

        } while (op != 0);
    }

    public static int menu() {

        System.out.println("Menu");
        System.out.println("----");
        System.out.println();
        System.out.println("1.- Ejercicio 1");
        System.out.println("2.- Ejercicio 2");
        System.out.println("3.- Ejercicio 3");
        System.out.println("4.- Ejercicio 4");
        System.out.println("5.- Ejercicio 5");
        System.out.println("6.- Ejercicio 6");
        System.out.println();
        System.out.print("Introduzca opción: ");
        int op = Entrada.leerEntero();
        System.out.println();
        return op;
    }

    public static void ejercicio1() {

        System.out.println("Ejercicio 1");
        System.out.println("-----------");
        System.out.println();

        int nb = Entrada.leerEntero("Introduce el numero que quieres buscar");
        int[] n1 = new int[5];
        RellenarAle(n1);
        System.out.println("El numero que buscas esta en el puesto: " + busqueda(n1, nb));

    }

    public static void RellenarAle(int[] n) {
        int i;

        for (i = 0; n.length > i; i++) {

            n[i] = (int) (Math.random() * 10) + 1;

        }

    }

    public static int busqueda(int[] n, int nb) {
        int i;
        int pos;
        for (i = 0; n.length > i; i++) {

            if (n[i] == nb) {
                pos = i;
                return pos+1;
            }
        }
        return 0;
    }
    public static void ejercicio2() {

        System.out.println("Ejercicio 1");
        System.out.println("-----------");
        System.out.println();

        int nb = Entrada.leerEntero("Introduce el numero que quieres buscar");
        int[] n1 = new int[5];
        RellenarAle(n1);
         if (busquedaOrdenada(n1,nb) != -1) {
            System.out.println("El elemento " + nb + " está en la posición " +busquedaOrdenada(n1,nb) );
        } else {
            System.out.println("El elemento " + nb + " no está en el arreglo.");
        }

    }
    public static int busquedaOrdenada(int[] arreglo, int elemento) {
        for (int i = 0; i < arreglo.length; i++) {

            if (arreglo[i] == elemento) {
                return i;
            }


            if (arreglo[i] > elemento) {
                break;
            }
        }


        return -1;
    }
    public static void ejercicio3() {

        System.out.println("Ejercicio 1");
        System.out.println("-----------");
        System.out.println();

        int nb = Entrada.leerEntero("Introduce el numero que quieres buscar");
        int[] n1 = new int[5];
        RellenarAle(n1);
         if (busquedaOrdenada(n1,nb) != -1) {
            System.out.println("El elemento " + nb + " está en la posición " +busquedaBinaria(n1,nb) );
        } else {
            System.out.println("El elemento " + nb + " no está en el arreglo.");
        }

    }
    public static int busquedaBinaria(int[] arreglo, int elemento) {
        int inicio = 0;
        int fin = arreglo.length - 1;

        while (inicio <= fin) {
            int medio = inicio + (fin - inicio) / 2;


            if (arreglo[medio] == elemento) {
                return medio;
            }


            if (arreglo[medio] > elemento) {
                fin = medio - 1;
            }


            else {
                inicio = medio + 1;
            }
        }

        return -1;
    }
}
 
