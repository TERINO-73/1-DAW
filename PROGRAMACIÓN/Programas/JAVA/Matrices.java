/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package matrices;

/**
 *
 * @author jmrivera
 */
public class Matrices {

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
        System.out.println("1.- Método Iguales");
        System.out.println("2.- Metodo Aciertos");
        System.out.println("3.- Operaciones con Matrices");
        System.out.println("0.- Salir");
        System.out.println();
        int op = Entrada.leerEntero("Introduzca opción: ");
        return op;
    }

    public static int menuMatrices() {
        System.out.println("");
        System.out.println("Elige una opcion:");
        System.out.println();
        System.out.println("1.- Rellenar y mostrar matrices");
        System.out.println("2.- Sumar");
        System.out.println("3.- Restar");
        System.out.println("4.- Multiplicar");
        System.out.println("0.- Salir");
        System.out.println();
        int op = Entrada.leerEntero("Introduzca opción: ");
        return op;
    }

    public static void ejercicio1() {
        int[] vector1 = new int[10];
        int[] vector2 = new int[10];
        rellenarVector(vector1);
        rellenarVector(vector2);
        System.out.println("Dados dos vectores: ");
        verVector(vector1);
        verVector(vector2);
        if (iguales(vector1, vector2)) {
            System.out.println("Son iguales");
        } else {
            System.out.println("Son distintos");
        }
        verVector(vector1);
        verVector(vector1);
        if (iguales(vector1, vector1)) {
            System.out.println("Son iguales");
        } else {
            System.out.println("Son distintos");
        }
    }

    public static boolean iguales(int v1[], int v2[]) {
        boolean resul = true;
        for (int i = 0; resul == true && i < v1.length; i++){
            if (v1[i] != v2[i]) {
                resul = false;
            }
        }
        return resul;
    }

    public static void rellenarVector(int vector[]) {
        for (int i = 0; i < vector.length; i++) {
            vector[i] = (int) (Math.random() * 9 + 1);
        }
    }

    public static void verVector(int vector[]) {
        System.out.print("[ ");
        for (int i = 0; i < vector.length; i++) {
            System.out.print(vector[i] + " ");
        }
        System.out.println("]");
    }

    public static void ejercicio2() {
        int[] vector1 = new int[10];
        int[] vector2 = new int[10];
        rellenarVector(vector1);
        rellenarVector(vector2);
        System.out.println("Dados dos vectores: ");
        verVector(vector1);
        verVector(vector2);
        System.out.println("Aciertos: "+aciertos(vector1,vector2));
        verVector(vector1);
        verVector(vector1);
        System.out.println("Aciertos: "+aciertos(vector1,vector1));
    }
    
    public static String aciertos(int[] v1, int[]v2){
        String aciertos="";
        int c = 0;
        for(int i=0; i<v1.length;i++){
            if(v1[i]==v2[i]){
                aciertos+="A";
                c++;
            }
        }
        return aciertos;
    }

    public static void ejercicio3() {
        int opcion;
        final int TAM = 3;
        int[][]mat1 = new int [TAM][TAM];
        int[][]mat2 = new int [TAM][TAM];
        int[][]matR = new int [TAM][TAM];
        
        opcion = menuMatrices();
        while (opcion != 0) {
            switch (opcion) {
                case 1:
                    rellenarMatriz(mat1);
                    rellenarMatriz(mat2);
                    verMatriz(mat1, "Matriz 1");
                    verMatriz(mat2, "Matriz 2");
                    break;
                case 2:
                    sumarMatrices(mat1, mat2, matR);
                    verMatriz(mat1, "Matriz 1");
                    verMatriz(mat2, "Matriz 2");
                    verMatriz(matR, "Matriz suma");
                    break;
                case 3:
                    restarMatrices(mat1, mat2, matR);
                    verMatriz(mat1, "Matriz 1");
                    verMatriz(mat2, "Matriz 2");
                    verMatriz(matR, "Matriz resta");
                    break;
                case 4:
                    verMatriz(mat1, "Matriz 1");
                    verMatriz(mat2, "Matriz 2");
                    multiplicarMatrices(mat1, mat2, matR);
                    verMatriz(matR, "Matriz producto");
                    break;
                default:
                //nada que hacer. 
            }
            Entrada.leerCadena("\nPulse INTRO para continuar...");
            opcion = menuMatrices();
        }
        System.out.println("\nFin matrices");

    }
    
    public static void verMatriz(int mat[][], String mensaje) {
        System.out.println(mensaje);
        for (int i = 0; i < mat.length; i++) {
            for (int j = 0; j < mat[0].length; j++) {
                System.out.print(mat[i][j] + " ");
            }
            System.out.println("");
        }
    }

    public static void rellenarMatriz(int mat[][]) {
        for (int i = 0; i < mat.length; i++) {
            for (int j = 0; j < mat[0].length; j++) {
                mat[i][j] = (int) (Math.random() * 9 + 1);
            }
        }
    }

    public static void sumarMatrices(int m1[][],int m2[][],int mR[][]) {
        for (int i = 0; i < m1.length; i++) {
            for (int j = 0; j < m1[0].length; j++) {
                mR[i][j] = m1[i][j] + m2[i][j];
            }
        }
    }

    public static void restarMatrices(int m1[][],int m2[][],int mR[][]) {
        for (int i = 0; i < m1.length; i++) {
            for (int j = 0; j < m1[0].length; j++) {
                mR[i][j] = m1[i][j] - m2[i][j];
            }
        }
    }

    public static void multiplicarMatrices(int m1[][],int m2[][],int mR[][]) {
        int suma;
        for (int i = 0; i < m1.length; i++) {
            for (int j = 0; j < m1[0].length; j++) {
                suma=0;
                for(int k=0; k<m1.length;k++){
                     suma=suma+(m1[i][k]*m2[k][j]);
                }
                mR[i][j] = suma;
            }
        }
    }

}
