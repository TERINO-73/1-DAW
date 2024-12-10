/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package examenmayo24;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;

/**
 *
 * @author JMRivera
 */
public class ExamenMayo24 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Hotel miHotel = new Hotel("Velázquez");
        miHotel.cargarHotel();
        Alojamiento alojamientoo;
        int opcion = menu();
        while (opcion != 0) {
            switch (opcion) {
                case 1:
                    miHotel.datosHotel();
                    miHotel.verHotel();
                    break;
                case 2:
                    String pedirAloja = Entrada.leerCadena("Introduzaca el nombre de su alojamiento");
                    Alojamiento busca = miHotel.buscarAlojamiento(pedirAloja);
                    busca.toString();
                    busca.verReservas();
                    break;
                case 3:
                    String pedirAloj = Entrada.leerCadena("Introduzaca el nombre de su alojamiento");
                    Alojamiento aloja3 = miHotel.buscarAlojamiento(pedirAloj);
                    aloja3.toString();
                    aloja3.verReservas();
                    String borraReserva = Entrada.leerCadena("Introduzca la fecha de la reserva que quiere borrar");
                    Fecha fechaBorrar = new Fecha(Entrada.leerEntero("Año: "), Entrada.leerEntero("mes: "), Entrada.leerEntero("dia: "));
                    aloja3.borrar(fechaBorrar);
                    break;
                case 4:
                    String pedirAloj4 = Entrada.leerCadena("Introduzaca el nombre de su alojamiento");
                    Alojamiento aloja4 = miHotel.buscarAlojamiento(pedirAloj4);
                    String pedirNFich = Entrada.leerTeclado("Introduzca el nombre del fichero");
                    aloja4.cargarReservas(pedirNFich);
                    break;
                case 5:
                    String pedirAloj5 = Entrada.leerCadena("Introduzaca el nombre de su alojamiento");
                    Alojamiento aloja5 = miHotel.buscarAlojamiento(pedirAloj5);
                    String pedirNFichero = Entrada.leerTeclado("Introduzca el nombre del fichero");
                    aloja5.cargarReservas(pedirNFichero);

                    break;
                case 6:
                    String pedirNFicher = Entrada.leerTeclado("Introduzca el nombre del fichero");
                    miHotel.cargarFichero(pedirNFicher);

                    break;
            }
            Entrada.leerCadena("\nPulse INTRO para continuar.");
            opcion = menu();
        }
        System.out.println("Fin de la ejecución de la aplicación.");
        miHotel.guardarHotel();
    }

    /**
     * Método que muestra el menú
     *
     * @return la opción elegida por el usuario
     */
    public static int menu() {
        int opcion;
        System.out.println("Gestión de reservas de habitaciones y apartamentos");
        System.out.println("--------------------------------------------------");
        System.out.println("1. Ver datos del Hotel: alojamientos y reservas.");
        System.out.println("2. Ver los datos de un alojamiento concreto.");
        System.out.println("3. Borrar una reserva de un alojamiento.");
        System.out.println("4. Cargar reservas de un alojamiento concreto desde un fichero de texto.");
        System.out.println("5. Guardar las reservas de un alojamiento en un fichero de texto.");
        System.out.println("6. Cargar alojamientos desde un fichero de texto.");
        System.out.println("0. Salir");
        opcion = Entrada.leerEntero("\n¿Opción?: ");
        return opcion;
    }



        public void guardarHotel() {
        try {
            FileOutputStream fichero = new FileOutputStream("hotel.dat");
            ObjectOutputStream salida = new ObjectOutputStream(fichero);

  
                
            
            fichero.close();
        } catch (IOException e) {
            System.out.println("Error creando fichero Interinos.dat");
        }
    }
}
