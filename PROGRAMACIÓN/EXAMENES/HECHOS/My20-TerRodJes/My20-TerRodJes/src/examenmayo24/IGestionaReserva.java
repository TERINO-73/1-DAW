/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package examenmayo24;

/**
 *
 * @author JMRivera
 */
public interface IGestionaReserva {

    /**
     * Inserta una reserva en una estructura de datos si están disponibles esas
     * fechas
     *
     * @param nuevaReserva
     * @return devolverá true si se ha insertado y false, en caso contrario
     */
    boolean insertar(Reserva nuevaReserva);

    /**
     * Ordenará el almacenamiento de reservas por la fecha de inicio
     */
    void ordenar();

    /**
     * Borrará la reserva que comienza en esa fecha del almacenamiento de
     * reservas
     *
     * @param FechaInicio
     * @return devolverá true si se ha borrado y false, en caso contrario
     */
    boolean borrar(Fecha FechaInicio);

    /**
     * Comprobará si están disponibles las fechas de la reserva
     *
     * @param nuevaReserva
     * @return devolverá true si están libres esas fechas y false, en caso
     * contrario
     */
    boolean disponible(Reserva nuevaReserva);

}
