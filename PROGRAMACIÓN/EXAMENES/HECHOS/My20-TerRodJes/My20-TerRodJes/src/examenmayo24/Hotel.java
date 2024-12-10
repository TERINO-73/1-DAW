/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package examenmayo24;

import java.io.BufferedReader;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Scanner;

/**
 *
 * @author JMRivera
 */
public class Hotel implements Serializable {

    private String nombre;
    private ArrayList<Alojamiento> alojamientos;

    public Hotel(String nombre) {
        this.nombre = nombre;
        this.alojamientos = new ArrayList<>();
    }

    public ArrayList<Alojamiento> getAlojamientos() {
        return alojamientos;
    }

    public void setAlojamientos(ArrayList<Alojamiento> alojamientos) {
        this.alojamientos = alojamientos;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void datosHotel() {

        System.out.println("Hotel " + this.nombre);

    }

    public Alojamiento buscarAlojamiento(String nombre) {
        Alojamiento al = null;
        for (Alojamiento alojamiento : alojamientos) {
            if (alojamiento.getNombre().equals(nombre)) {

                return alojamiento;
            }
        }
        return al;
    }

    public void cargarFichero(String nombreFichero) {

        try {
            FileReader fichero = new FileReader(nombreFichero);
            BufferedReader entrada = new BufferedReader(fichero);
            Alojamiento nuevoAlojamiento;
            String linea = entrada.readLine(); // lectura de una linea del fichero
            while (linea != null) {
                // Creo el objeto Scanner separando los datos de cada atributo
                Scanner datos = new Scanner(linea).useDelimiter(";");
                String tipo = datos.next();
                String nombre = datos.next();
                int numeroHuespedes = datos.nextInt();
                String conTerraza = datos.next();
                boolean ConTerraza;
                int numeroHabitaciones;
                String conLavadora;
                boolean ConLavadora;

                switch (conTerraza.charAt(0)) {

                    case 's':
                        ConTerraza = true;
                        break;
                    case 'n':
                        ConTerraza = false;
                        break;
                    default:
                        ConTerraza = false;
                }

                switch (tipo.charAt(0)) {
                    case 'H':
                        nuevoAlojamiento = new Habitacion(nombre, numeroHuespedes, ConTerraza);

                        break;
                    case 'A':
                        numeroHabitaciones = datos.nextInt();
                        conLavadora = datos.next();
                        switch (conLavadora.charAt(0)) {

                            case 's':
                                ConLavadora = true;
                                break;
                            case 'n':
                                ConLavadora = false;
                                break;
                            default:
                                ConLavadora = false;
                        }

                        nuevoAlojamiento = new Apartamento(numeroHabitaciones, ConLavadora, nombre, numeroHuespedes, ConTerraza);

                        break;
                    default:
                        nuevoAlojamiento = null;
                }
                for (Alojamiento alojamiento : alojamientos) {
                    if (nuevoAlojamiento != null) {
                        if (alojamiento.getNombre().equalsIgnoreCase(nombre)) {
                            alojamientos.add(nuevoAlojamiento);
                        }

                    }

                    linea = entrada.readLine();
                }
                entrada.close();
            }
        } catch (Exception e) {
            System.out.println("Error en el formato del fichero: " + nombreFichero);
        }

    }

    @Override
    public String toString() {
        return "Hotel{" + "nombre=" + nombre + ", alojamientos=" + alojamientos + '}';
    }

    public void verHotel() {

        for (Alojamiento alojamiento : alojamientos) {
            toString();
            alojamiento.verReservas();
        }

    }

    public void cargarHotel() {
        try {
            FileInputStream fichero = new FileInputStream("Hotel.dat");
            ObjectInputStream entrada = new ObjectInputStream(fichero);
            Alojamiento p = (Alojamiento) entrada.readObject();
            while (p != null) {
                alojamientos.add(p);
                p = (Alojamiento) entrada.readObject();
            }
            fichero.close();
        } catch (EOFException e) {
            // Se ha llegado al final del fichero
            System.out.println("Cargados todos los objetos del fichero Hotel.dat");
        } catch (IOException | ClassNotFoundException e) {
            System.out.println("Error leyendo en el fichero: Hotel.dat");
        }
    }
    public void guardarHotel() {
        try {
            FileOutputStream fichero = new FileOutputStream("Hotel.dat");
            ObjectOutputStream salida = new ObjectOutputStream(fichero);
            for (Alojamiento aloja : alojamientos) {
                
                    salida.writeObject(aloja);
                
            }
            fichero.close();
        } catch (IOException e) {
            System.out.println("Error creando fichero Hotel.dat");
        }
    }

}


        

    
