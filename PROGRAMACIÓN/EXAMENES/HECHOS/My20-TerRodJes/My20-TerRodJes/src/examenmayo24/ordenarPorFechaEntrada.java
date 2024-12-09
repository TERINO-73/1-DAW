/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package examenmayo24;

import java.util.Comparator;

/**
 *
 * @author DAW_T
 */
public class ordenarPorFechaEntrada implements Comparator<Reserva> {

    public ordenarPorFechaEntrada() {
        
        
    }

    @Override
    public int compare(Reserva o1, Reserva o2) {
        return o1.getFechaEntrada().compareTo(o2.getFechaEntrada());
    }


    
}
