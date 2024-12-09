/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package mastermind;

import java.util.Arrays;
import java.util.Scanner;

/**
 *
 * @author JMRivera
 */
public class MasterMind {

  /**
   * @param args the command line arguments
   */
  final static int MAX_INTENTOS = 10;

  /**
   * Función principal del juego MasterMind
   */
  public static void main(String[] args) {
    // TODO code application logic here
    int[] maquina, jugador; // Vectores para el numero secreto y las jugadas
    int cont = 0; // contador de jugadas
    maquina = new int[4];
    jugador = new int[4];
    rellenarSecreto(maquina);
    System.out.println("Combinación secreta: " + verVector(maquina));
    verReglas();
    do {
      jugada(jugador);
      cont++;
      System.out.println("Jugada " + cont + ": " + verVector(jugador));
      System.out.println("Pistas : " + aciertos(maquina, jugador) + semiAciertos(maquina, jugador));
    } while (!iguales(jugador, maquina) && cont < MAX_INTENTOS);
    // Usando la función "iguales" definida abajo
    if (iguales(jugador, maquina)) {
      System.out.println("¡Enhorabuena!");
    } else {
      System.out.println("Has llegado al límite de intentos. ¡Otra vez será!");
    }
    // Usando la función "Arrays.equals" de la clase Arrays
    if (Arrays.equals(jugador, maquina)) {
      System.out.println("¡Enhorabuena!");
    } else {
      System.out.println("Has llegado al límite de intentos. ¡Otra vez será!");
    }
    // Para que veais el método equals() de un array
    if (jugador.equals(maquina)) {
      System.out.println("Son iguales");
    } else {
      System.out.println("Son distintos");
    }
  }

  /**
   * Función que rellena un vector aleatoriamente con números del 1 al 8 sin
   * repetirse
   * @param vector 
   */
  public static void rellenarSecreto(int[] vector) {
    int num;
    for (int i = 0; i < vector.length; i++) {
      do {
        num = (int) (Math.random() * 8 + 1);
      } while (repetido(vector, num, i));
      vector[i] = num;
    }
  }

  /**
   * Función que rellena un vector pidiendo los datos por teclado con números
   * del 1 al 8 sin repetirse
   * @param vector a rellenar
   */
  public static void jugada(int[] vector) {
    Scanner teclado = new Scanner(System.in);
    int num;
    System.out.println("Introduzca 4 números, de uno en uno, entre el 1 y el 8, ambos incluidos:");
    for (int i = 0; i < vector.length; i++) {
      do {
        num = Integer.parseInt(teclado.nextLine());
      } while (repetido(vector, num, i) || num < 1 || num > 8);
      vector[i] = num;
    }
  }

  /**
   * Función que comprueba si el número a introducir "num" existe previamente en
   * el vector en posiciones anteriores a "pos" devolviendo true o false, según
   * el caso
   * @param vector
   * @param num a comprobar si está repetido
   * @param pos busca en posiciones anteriores a ésta
   * @return 
   */
  public static boolean repetido(int[] vector, int num, int pos) {
    for (int i = 0; i < pos; i++) {
      if (vector[i] == num) {
        return true;
      }
    }
    return false;
  }

  /**
   * Función que comprueba si ambos vectores son iguales devolviendo true o
   * false, según el caso Se puede sustituir por una llamada a Arrays.equals
   * @param v1 
   * @param v2
   * @return 
   */
  public static boolean iguales(int[] v1, int[] v2) {
    for (int i = 0; i < v1.length; i++) {
      if (v1[i] != v2[i]) {
        return false;
      }
    }
    return true;
  }

  /**
   * Función devuelve un String con el contenido del vector
   * @param vector
   * @return 
   */
  public static String verVector(int[] vector) {
    StringBuilder texto = new StringBuilder();
    for (int i = 0; i < vector.length; i++) {
      texto.append(String.valueOf(vector[i]));
    }
    return texto.toString();
  }

  /**
   * Función devuelve un String con el tantas "A" como aciertos hay en la 
   * jugada: coincidencias en ambos vectores en la misma posición.
   * @param v1
   * @param v2
   * @return 
   */
  public static String aciertos(int[] v1, int[] v2) {
    StringBuilder texto = new StringBuilder();
    for (int i = 0; i < v1.length; i++) {
      if (v1[i] == v2[i]) {
        texto.append("A");
      }
    }
    return texto.toString();
  }

  /**
   * Función devuelve un String con el tantas "S" como semiaciertos hay en la
   * jugada: coincidencias en ambos vectores en la distinta posición
   * @param v1
   * @param v2
   * @return 
   */
  public static String semiAciertos(int[] v1, int[] v2) {
    StringBuilder texto = new StringBuilder();
    for (int i = 0; i < v1.length; i++) {
      for (int j = 0; j < v1.length; j++) {
        if (v1[i] == v2[j] && i != j) {
          texto.append("S");
        }
      }
    }
    return texto.toString();
  }

  /**
   * Función imprime con el contenido del vector 
   * NO USADA: diseñada para probarla
   */
  public static void ver(int[] vector) {
    for (int i = 0; i < vector.length; i++) {
      System.out.print(vector[i]);
    }
  }

  /**
   * Función imprime las reglas del juego
   */
  public static void verReglas() {
    System.out.println("Reglas del juego:");
    System.out.println("En cada jugada se pediran 4 números entre el 1 y el 8 sin repetir ninguno.");
    System.out.println("En cada partida se dispone de un máximo de " + MAX_INTENTOS + " intentos");
    System.out.println("Pistas:");
    System.out.println(" - Cada A indica un acierto (número acertado en su posición)");
    System.out.println(" - Cada S, un semiacierto (número acertado en otra posición)");
    System.out.println("");
  }

}
