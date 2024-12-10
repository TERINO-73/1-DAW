/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gestionarinstituto;

/**
 *
 * @author JMRivera
 */
public abstract class Profesor extends Personal {

    private String especialidad;
    private String puesto;

    public Profesor(String especialidad, String puesto, String nrp, String nombre, Fecha fechaIngreso, Fecha fechaNacimiento, int telefono) {
        super(nrp, nombre, fechaIngreso, fechaNacimiento, telefono);
        this.especialidad = especialidad;
        this.puesto = puesto;
    }

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }

    @Override
    public void verDatos() {
        super.verDatos();
        System.out.println("Puesto:"+puesto);
        System.out.println("Especialidad:"+especialidad);
    }

    
    public double salario() {
        return 1800;
    }
    
    public double complemento() {
        if (puesto == "Director"){
            return salario() + 800;
        }else if (puesto =="Jefe de Estudios" || puesto == "Vicedirector" || puesto == "Secretario") {
            return salario() + 400;
        }else if(puesto == "Jefe de Departamento"){
            return salario() + 50;
        }else if(puesto == "Tutor"){
            return salario() + 25;
        }
        return 0;
    }
}
