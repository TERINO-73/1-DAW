package gestoniarempresa;

/**
 *
 * @author TERINO
 */
public class Gerente extends Empleados {

    private double comision;
    private int proyectos;

    public Gerente(String nombre, String dni, double salario, double comision, int proyectos) {
        super(nombre, dni, salario);
        this.comision = comision;
        this.proyectos = proyectos;
    }

    public double getComision() {
        return comision;
    }

    public void setComision(double comision) {
        this.comision = comision;
    }

    public int getProyectos() {
        return proyectos;
    }

    public void setProyectos(int proyectos) {
        this.proyectos = proyectos;
    }

    @Override
    public double extras() {
        return comision * proyectos;
    }

    @Override
    public void datosEmpleados() {
        super.datosEmpleados();
        System.out.println("Categoría: Gerente");
        System.out.println("Comisión: " + comision);
        System.out.println("Proyectos: " + proyectos);
        System.out.println("Extras: " + extras());
    }
}
