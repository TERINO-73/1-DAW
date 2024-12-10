/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package examenmayo24;

/**
 *
 * @author DAW_T
 */
public class Apartamento extends Alojamiento {

    private int numeroHabitaciones;
    private boolean conLavadora;

    public Apartamento(int numeroHabitaciones, boolean conLavadora, String nombre, int numeroHuespedes, boolean conTerraza) {
        super(nombre, numeroHuespedes, conTerraza);
        this.numeroHabitaciones = numeroHabitaciones;
        this.conLavadora = conLavadora;
    }

    public int getNumeroHabitaciones() {
        return numeroHabitaciones;
    }

    public void setNumeroHabitaciones(int numeroHabitaciones) {
        this.numeroHabitaciones = numeroHabitaciones;
    }

    public boolean isConLavadora() {
        return conLavadora;
    }

    public void setConLavadora(boolean conLavadora) {
        this.conLavadora = conLavadora;
    }

    @Override
    public String toString() {
        super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("Apartamento{");
        sb.append("numeroHabitaciones=").append(numeroHabitaciones);
        sb.append(", conLavadora=").append(conLavadora);
        sb.append('}');
        return sb.toString();
    }

}
