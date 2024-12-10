/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package examenmayo24;

import java.io.Serializable;
import java.util.Objects;

/**
 *
 * @author JMRivera
 */
public class Reserva implements Serializable {

    private Fecha fechaEntrada;
    private Fecha fechaSalida;

    public Reserva(Fecha fechaEntrada, Fecha fechaSalida) {
        this.fechaEntrada = fechaEntrada;
        this.fechaSalida = fechaSalida;
    }

    public Fecha getFechaSalida() {
        return fechaSalida;
    }

    public void setFechaSalida(Fecha fechaSalida) {
        this.fechaSalida = fechaSalida;
    }

    public Fecha getFechaEntrada() {
        return fechaEntrada;
    }

    public void setFechaEntrada(Fecha fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }

    public boolean esValida() {

        if (fechaEntrada.compareTo(fechaSalida) == 1) {
            return true;
        }
        return false;
    }

    @Override
    public int hashCode() {
        int hash = 5;
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

        final Reserva other = (Reserva) obj;
        return Objects.equals(this.fechaEntrada, other.fechaEntrada);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(fechaEntrada);
        sb.append(" ").append(fechaSalida);
        return sb.toString();
    }

}
