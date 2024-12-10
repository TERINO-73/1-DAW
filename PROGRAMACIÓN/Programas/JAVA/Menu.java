/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package bucles;


/**
 *
 * @author JMRivera
 */
public class Bucles {

  /**
   * @param args the command line arguments
   */
  
  public static void main(String[] args) {
    // TODO code application logic here
    
    int op;
    do{
      op = menu();
      switch (op) {
        case 1:
          ejercicio1();
          break;
        case 2:
          ejercicio2();
          break;
        default:
          // Nada que hacer
      }
      if(op != 0){
        System.out.print("\nPulse intro para continuar...");
        Entrada.leerTeclado();
      }else{
        System.out.println("\nFin del programa.");
      }
      
    }while(op != 0);
  }
  
  public static int menu(){

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
    System.out.println();
    System.out.print("Introduzca opción: ");    
    int op = Entrada.leerEntero();
    System.out.println();
    return op;
  }
  
  public static void ejercicio1() {
    // TODO code application logic here
    System.out.println("Ejercicio 1");
    System.out.println("-----------");
    System.out.println();
    
    System.out.print("Introduzca un número: ");
    int num = Entrada.leerEntero();
    for(int i = 0; i<=num; i++){
      System.out.print(i+" ");
    }
    System.out.println();
  }  
}
  