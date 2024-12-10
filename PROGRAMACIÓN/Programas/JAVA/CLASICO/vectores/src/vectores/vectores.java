/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package vectores;

import bucles1.Entrada;

/**
 *
 * @author JMRivera
 */
public class vectores {

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
                    ejercicio3();
                case 4 ->
                    ejercicio4();
                case 5 ->
                    ejercicio5();
                case 6 ->
                    ejercicio6();

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

        int[] n1 = new int[5];

        rellenar(n1);
        System.out.println("El maximo es: " + maximo(n1));
        System.out.println("El minimo es: " + minimo(n1));
        System.out.println("La media es: " + media(n1));

    }

    public static void rellenar(int[] n) {
        int i;
        for (i = 0; n.length > i; i++) {

            n[i] = Entrada.leerEntero("mete un numero: ");
        }
    }

    public static int maximo(int[] n) {
        int i;

        int max = n[0];
        for (i = 0; n.length > i; i++) {
            if (n[i] > max) {
                max = n[i];
            }

        }
        return max;
    }

    public static int minimo(int[] n) {
        int i;

        int min = n[0];
        for (i = 0; n.length > i; i++) {
            if (n[i] < min) {
                min = n[i];
            }

        }
        return min;
    }

    public static int media(int[] n) {
        int i;

        int media = 0;
        for (i = 0; n.length > i; i++) {
            media = media + n[i];

        }
        media = media / n.length;
        return media;
    }

    public static void ejercicio2() {

        System.out.println("Ejercicio 2");
        System.out.println("-----------");
        System.out.println();

        int[] n2 = new int[20];

        rellenar(n2);
        mostrar(n2);

    }

    public static void mostrar(int[] n) {
        int i;
        for (i = 0; n.length > i; i++) {

            System.out.print(n[i]);
            System.out.print(",");
        }
    }

    public static void ejercicio3() {

        System.out.println("Ejercicio 3");
        System.out.println("-----------");
        System.out.println();

        int[] n3 = new int[100];
        int nd = 1;
        Tiradas(n3);

        do {
            System.out.println("Han salido " + contarpunto(n3, nd) + " del numero:" + nd);
            nd++;
        } while (nd < 7);
    }

    public static void Tiradas(int[] n) {
        int i;
        for (i = 0; n.length > i; i++) {

            n[i] = (int) (Math.random() * 6) + 1;
        }
    }

    public static int contarpunto(int[] n, int nd) {
        int i;
        int c = 0;
        for (i = 0; n.length > i; i++) {
            if (n[i] == nd) {
                c++;
            }
        }
        return c;
    }

    public static void ejercicio4() {

        System.out.println("Ejercicio 4");
        System.out.println("-----------");
        System.out.println();

        int[] n4 = new int[100];
        RellenarAle(n4);
        System.out.println("Han aprobado "+CuentaAprobados(n4)+" alumnos");
        System.out.println("Han aprobado "+CuentaSuspensos(n4)+" alumnos");

    }

    public static void RellenarAle(int[] n) {
        int i;
        
        for (i = 0; n.length > i; i++) {

            n[i] = (int) (Math.random() * 10) + 1;
            
        }
        
    }

    public static int CuentaAprobados(int[] n) {
        int i;
        int c = 0;
        for (i = 0; n.length > i; i++) {
            if (n[i] >= 5) {
                c++;
            }
        }
        return c;
    }

    
    public static int CuentaSuspensos(int[] n) {
        int i;
        int c = 0;
        for (i = 0; n.length > i; i++) {
            if (n[i] < 5) {
                c++;
            }
        }
        return c;
    }
    public static void ejercicio5() {

        System.out.println("Ejercicio 5");
        System.out.println("-----------");
        System.out.println();

        int[] n5 = new int[100];
       
        int suspensos=0;
        int suficiente =0;
        int bien=0;
        int notable=0;
        int sb=0;
        RellenarAle(n5);
        MostrarNotas(n5);
    }

    public static void MostrarNotas(int[] n) {
        int i;
        int suspensos=0;
        int suficientes =0;
        int bien=0;
        int notables=0;
        int sb=0;
        for (i = 0; n.length > i; i++) {
            switch(n[i]){
                case 1,2,3,4:
                    suspensos++;
                    break;
                case 5:
                    suficientes++;
                    break;
                case 6:
                    bien++;
                    break;
                case 7,8:
                    notables++;
                    break;
                case 9,10:
                    sb++;
                    break;
                    
            }
            
        }
        System.out.println("Hay "+suspensos+" suspensos");
        System.out.println("Hay "+suficientes+" suficientes");
        System.out.println("Hay "+bien+" bien");
        System.out.println("Hay "+notables+" notables");
        System.out.println("Hay "+sb+" sobresalientes");

    }
    public static void ejercicio6() {

        System.out.println("Ejercicio 6");
        System.out.println("-----------");
        System.out.println();

        int[] n6 = new int[10];

        RellenarImpar(n6);
        mostrarAlReves(n6);

    }
    public static void RellenarImpar(int[] n) {
        int i = 0;
        int imp=0;
        int c = 0;
               do{
                   if(i%2!=0){
                   imp++;
                   n[c]=i;
                   c++;
                           }
                   i++;
               }while(imp!=n.length); 
        
            
        }
    public static void mostrarAlReves(int[] n) {
        int i=9;
        do {

            System.out.print(n[i]);
            System.out.print(",");
            i--;
        }while(i!=-1);
    }
        
    
}
