package gestoniarempresa;

/**
 * @author TERINO
 */
public abstract class Empleados {

    private int id;
    private String nombre;
    private String dni;
    private double salario;
    private Cuenta cuentaEmpleado;

    public Empleados(String nombre, String dni, double salario) {
        this.nombre = nombre;
        this.dni = dni;
        this.salario = salario;
        this.cuentaEmpleado = new Cuenta(nombre, dni, 5.0, salario);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public Cuenta getCuentaEmpleado() {
        return cuentaEmpleado;
    }

    public void setCuentaEmpleado(Cuenta cuentaEmpleado) {
        this.cuentaEmpleado = cuentaEmpleado;
    }

    public abstract double extras();

    public void datosEmpleados() {
        System.out.println("Nombre: " + nombre);
        System.out.println("DNI: " + dni);
        System.out.println("Salario" + salario);
        
    }
}