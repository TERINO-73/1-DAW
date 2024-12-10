/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gestionarinstituto;

/**
 *
 * @author jesus_dtd
 */
public class ProfesorTitular extends Profesor {
    
    private boolean conDestino;

    public ProfesorTitular(boolean conDestino,String especialidad, String puesto, String nrp, String nombre, Fecha fechaIngreso, Fecha fechaNacimiento, int telefono) {
        super(especialidad, puesto, nrp, nombre, fechaIngreso, fechaNacimiento, telefono);
        this.conDestino=conDestino;
    }

    public boolean isConDestino() {
        return conDestino;
    }

    public void setConDestino(boolean conDestino) {
        this.conDestino = conDestino;
    }

    @Override
    public double salario(){
        return super.salario() + 300;
    }
    
    @Override
    public double complemento() {
        double salario = salario();
        if (conDestino = true){
            salario = salario + 300;
        }
        Fecha diaHoy = new Fecha(0,0,0);
        diaHoy.setHoy();
        salario =  this.getFechaIngreso().trienios(diaHoy)* 50;
        
        return salario;
    }
    
    @Override
    public void verDatos(){
        System.out.println("Profesor Titular ");
        super.verDatos();
        System.out.println("conDestino"+conDestino);
    
    }
    
}
