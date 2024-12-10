/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package examenmayo24;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.Scanner;

/**
 *
 * @author JMRivera
 */
public class Alojamiento implements IGestionaReserva, Serializable {

    private String nombre;
    private int numeroHuespedes;
    private boolean conTerraza;
    private ArrayList<Reserva> reservas;

    public Alojamiento(String nombre, int numeroHuespedes, boolean conTerraza) {
        this.nombre = nombre;
        this.numeroHuespedes = numeroHuespedes;
        this.conTerraza = conTerraza;
        this.reservas = new ArrayList<>();
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getNumeroHuespedes() {
        return numeroHuespedes;
    }

    public void setNumeroHuespedes(int numeroHuespedes) {
        this.numeroHuespedes = numeroHuespedes;
    }

    public boolean isTieneTerraza() {
        return conTerraza;
    }

    public void setTieneTerraza(boolean conTerraza) {
        this.conTerraza = conTerraza;
    }

    public ArrayList<Reserva> getReservas() {
        return reservas;
    }

    public void setReservas(ArrayList<Reserva> reservas) {
        this.reservas = reservas;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(nombre);
        sb.append(" pax ").append(numeroHuespedes);
        sb.append(conTerraza ? " con terraza " : " ");
        return sb.toString();
    }

    public String verReservas() {
        StringBuilder sb = new StringBuilder();
        sb.append("\n");
        for (Reserva r : this.reservas) {
            sb.append(r).append("\n");
        }
        return sb.toString();
    }

    @Override
    public int hashCode() {
        int hash = 7;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }

        final Alojamiento other = (Alojamiento) obj;
        return Objects.equals(this.nombre, other.nombre);
    }

    public void cargarReservas(String fichero) {
        try {
            FileReader ficherito = new FileReader(fichero);
            BufferedReader entrada = new BufferedReader(ficherito);

            String linea = entrada.readLine(); // lectura de una linea del fichero
            while (linea != null) {
                Scanner datos = new Scanner(linea);
                String f1 = datos.next();
                Scanner fecha1 = new Scanner(f1).useDelimiter("/");
                Fecha fechaE = new Fecha(fecha1.nextInt(), fecha1.nextInt(), fecha1.nextInt());

                Scanner fecha2 = new Scanner(f1).useDelimiter("/");
                Fecha fechaS = new Fecha(fecha1.nextInt(), fecha1.nextInt(), fecha1.nextInt());
                String f2 = datos.next();
                Reserva reserva = new Reserva(fechaE, fechaS);

                insertar(reserva);
                linea = entrada.readLine();

            }
            entrada.close();
        } catch (IOException e) {
            System.out.println("Error en el formato del fichero: " + fichero);
        }
    }

    public void guardarReservas() {

        String nfichero = Entrada.leerTeclado("Digame el nombre de su alojamiento");
        try {
            FileWriter fichero = new FileWriter("R" + nfichero + ".txt ");
            BufferedWriter bw = new BufferedWriter(fichero);

            for (Reserva reserva : reservas) {
                int i = 0;
                bw.write(reservas.get(i).toString());
                i++;
            }
            bw.close();
        } catch (IOException e) {
            System.out.println("No se ha podido escribir en el fichero");
        }

    }


    @Override
    public boolean insertar(Reserva nuevaReserva) {

        if (nuevaReserva.esValida() && disponible(nuevaReserva) == true) {
            reservas.add(nuevaReserva);
            return true;

        }

        return false;
    }

    @Override
    public void ordenar() {

        Collections.sort(reservas, new ordenarPorFechaEntrada());

    }

    @Override
    public boolean borrar(Fecha FechaInicio) {
        for (Reserva reserva : reservas) {
            if (reserva.getFechaEntrada().equals(FechaInicio)) {
                reservas.remove(reserva);
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean disponible(Reserva nuevaReserva) {
        for (Reserva reserva : reservas) {
            if (reserva.getFechaEntrada().compareTo(nuevaReserva.getFechaEntrada()) == 1 && reserva.getFechaSalida().compareTo(nuevaReserva.getFechaEntrada()) == -1) {
                return true;
            }
        }

        return false;

    }
    public void verAloja(){
    
    
    }
    
}
