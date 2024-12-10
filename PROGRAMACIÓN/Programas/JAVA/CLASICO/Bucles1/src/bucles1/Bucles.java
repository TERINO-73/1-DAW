/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package bucles1;


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
        case 1 -> ejercicio1();
        case 2 -> ejercicio2();
        case 3 -> ejercicio3();
        case 4 -> ejercicio4();
        case 5 -> ejercicio5();
        case 6 -> ejercicio6();
        case 7 -> ejercicio7();
        case 8 -> ejercicio8();
        case 9 -> ejercicio9();
        case 10 -> ejercicio10();
        default -> op=0;
            
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
  //Dado dos números positivos (el primero más pequeño que el segundo), mostrar todos los números que hay desde el primero hasta el segundo (ambos inclusive).
  public static void ejercicio2() {
     
      
    System.out.println("Ejercicio 2");
    System.out.println("-----------");
    System.out.println();
    
      int a = Entrada.leerEntero("Introduce el primer numero:");
      int b = Entrada.leerEntero("Introduce el segundo numero:");
    if (a<b){
        for (int i=a;i>=b; i++){
            System.out.println(i);
        }
    }
  }
    public static void ejercicio3() {
     
      
    System.out.println("Ejercicio 3");
    System.out.println("-----------");
    System.out.println();
    
      int a = Entrada.leerEntero("Introduce el primer numero:");
      int b = Entrada.leerEntero("Introduce el segundo numero:");
      int suma=0;
    if (a<b){
        for (int i=a;i<=b; i++){
            suma=suma+i;
            System.out.println(suma);
        }
    }
  }
     public static void ejercicio4() {
     
      
    System.out.println("Ejercicio 3");
    System.out.println("-----------");
    System.out.println();
    
      int a = Entrada.leerEntero("Introduce el primer numero:");
      int b = Entrada.leerEntero("Introduce el segundo numero:");
      int divisor=Entrada.leerEntero("Introduce el numero que quieres que vea si es divisor:");
    if (a<b){
        for (int i=a;i<=b; i++){
            if (divisor%i!=0){
                System.out.println(i);
            }
        }
    }
  }
       public static void ejercicio5() {
     
      
    System.out.println("Ejercicio 3");
    System.out.println("-----------");
    System.out.println();
    
      int a = Entrada.leerEntero("Introduce el primer numero:");
      int b = Entrada.leerEntero("Introduce el segundo numero:");
      int divisor=Entrada.leerEntero("Introduce el numero que quieres que vea si es divisor:");
      int suma=0;
    if (a<b){
        for (int i=a;i<=b; i++){
            suma=suma+i;
            System.out.println(suma);
            if (divisor%suma!=0){
                System.out.println(i);
        }
  }}
       }
         public static void ejercicio6() {
     
      
    System.out.println("Ejercicio 6");
    System.out.println("-----------");
    System.out.println();
    
    int nume;
        do{
        nume=Entrada.leerEntero("introduce un numero y te dire si es positivo o negativo:");
        if (nume<0){
            System.out.println("Es negativo");
        } else {
            System.out.println("Es positivo");
        }
    }while(nume!=0);
  }
           public static void ejercicio7() {
     
      
    System.out.println("Ejercicio 7");
    System.out.println("-----------");
    System.out.println();
    
    int num;
    int suma=0;
    do{
        num=Entrada.leerEntero("introduce un numero:");
        suma=suma+num;
    }while (num>0);
               System.out.println(suma);
  }
             public static void ejercicio8() {
     
      
    System.out.println("Ejercicio 8");
    System.out.println("-----------");
    System.out.println();
    
    int ale = (int) (Math.random() * 20) + 1;
      int num = 0;
    do{
        num=Entrada.leerEntero("Intente buscar mi numero secreto entre 0 y 20");
        if (num>ale){
            System.out.println("Mi numero es menor");
        } else {
            System.out.println("Mi numero es mayor");
        }
    }while(num!=ale);
                 System.out.println(ale+" es mi numero");
  }
               public static void ejercicio9() {
     
      
    System.out.println("Ejercicio 9");
    System.out.println("-----------");
    System.out.println();
    
      int suma=0;
      int num=0;
      int i=0;
      do{
          num=Entrada.leerEntero("introduce un numero:");
          suma=num+suma;
          i=i+1;
      }while (i <= 10);
        }
    
  
                public static void ejercicio10() {
     
      
    System.out.println("Ejercicio 10");
    System.out.println("-----------");
    System.out.println();
    
      int nv=Entrada.leerEntero("Introduce el numero de veces que vas a introducir el numero");
      int num;
      int i=0;
      int suma=0;
      int max=0;
      int min=0;
      double media;
      
      do{
          num=Entrada.leerEntero("introduce un numero:");
          if (num>max){max=num;}
          if (num<min){min=num;}
          
          suma=num+suma;
          i=i+1;
      }while (i < nv);
      media=suma/nv;
                    System.out.println("Esta es la media: "+media);
                    System.out.println("Este es el maximo: "+max);
                    System.out.println("Este es el minimo: "+min);
  }               
}
  