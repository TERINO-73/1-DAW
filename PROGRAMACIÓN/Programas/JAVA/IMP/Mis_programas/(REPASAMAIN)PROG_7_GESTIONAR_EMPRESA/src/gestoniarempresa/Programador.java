package gestoniarempresa;

/**
 * @author jesus_dtd
 */
public class Programador extends Empleados {

    private int horasExtras;

    public Programador(String nombre, String dni, double salario, int horasExtras) {
        super(nombre, dni, salario);
        this.horasExtras = horasExtras;
    }

    public int getHorasExtras() {
        return horasExtras;
    }

    public void setHorasExtras(int horasExtras) {
        this.horasExtras = horasExtras;
    }

    @Override
    public double extras() {
        return horasExtras * 20;
    }

    @Override
    public void datosEmpleados() {
        super.datosEmpleados();
        System.out.println("Categoría: Programador");
        System.out.println("Horas extras: " + horasExtras);
        System.out.println("Extras: " + extras());
    }
}

