/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package examenmayo24;

/**
 *
 * @author DAW_T
 */
public class Habitacion extends Alojamiento {

    public Habitacion(String nombre, int numeroHuespedes, boolean conTerraza) {
        super(nombre, numeroHuespedes, conTerraza);
    }

    @Override
    public String toString() {
        super.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("Habitacion{");
        sb.append('}');
        return sb.toString();
    }

}
