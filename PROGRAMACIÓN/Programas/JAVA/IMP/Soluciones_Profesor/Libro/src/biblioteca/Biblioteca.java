/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package biblioteca;

import java.util.Scanner;

/**
 *
 * @author jmrivera
 */
public class Biblioteca {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        Scanner teclado = new Scanner(System.in);
        Libro libro1, libro2;
        libro1 = new Libro("El quijote", "Cervantes", 1, 0);
        libro2 = new Libro();
        System.out.println("Datos del libro:");
        System.out.print("Título: ");
        libro2.setTitulo(teclado.nextLine());
        System.out.print("Autor: ");
        libro2.setAutor(teclado.nextLine());
        System.out.print("Número de ejemplares: ");
        libro2.setNumeroEjemplares(Integer.parseInt(teclado.nextLine()));
        esperar();
        System.out.print("Datos libro1:\n"+libro1.toString());
        if(libro1.prestamo()){
            System.out.println("Préstamo realizado correctamente.");
        }else{
            System.out.println("No quedan ejemplares del libro "+libro1.getTitulo());
        }
        esperar();
        if(libro1.devolucion()){
            System.out.println("Devolución realizada correctamente.");
        }else{
            System.out.println("No hay ejemplares prestados del libro "+libro1.getTitulo());
        }
        esperar();
        if(libro1.prestamo()){
            System.out.println("Préstamo realizado correctamente.");
        }else{
            System.out.println("No quedan ejemplares del libro "+libro1.getTitulo());
        }
        esperar();
        if(libro1.prestamo()){
            System.out.println("Préstamo realizado correctamente.");
        }else{
            System.out.println("No quedan ejemplares del libro "+libro1.getTitulo());
        }
        esperar();
        System.out.println("Datos libro1:\n"+libro1.toString());
        System.out.println("Datos libro2:\n"+libro2.toString());
        
    }
    public static void esperar(){
        Scanner teclado = new Scanner(System.in);
        System.out.println("Pulse intro para continuar...");
        teclado.nextLine();
    }
    
}
