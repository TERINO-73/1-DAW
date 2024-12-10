package gestoniarempresa;

/**
 * @author TEIRNO
 */
public class Empresa {

    private String nombreEmpresa;
    private String cif;
    private int numeroEmpleados;
    private Cuenta cuentaEmpresa;
    private Empleados[] empleados = new Empleados[20];

    public Empresa(String nombreEmpresa, String cif, double saldoInicial) {
        this.nombreEmpresa = nombreEmpresa;
        this.cif = cif;
        this.numeroEmpleados = 0;
        this.cuentaEmpresa = new Cuenta(nombreEmpresa, cif, 10.0, saldoInicial);
    }

    public String getNombreEmpresa() {
        return nombreEmpresa;
    }

    public void setNombreEmpresa(String nombreEmpresa) {
        this.nombreEmpresa = nombreEmpresa;
    }

    public String getCif() {
        return cif;
    }

    public void setCif(String cif) {
        this.cif = cif;
    }

    public int getNumeroEmpleados() {
        return numeroEmpleados;
    }

    public void setNumeroEmpleados(int numeroEmpleados) {
        this.numeroEmpleados = numeroEmpleados;
    }

    public Cuenta getCuentaEmpresa() {
        return cuentaEmpresa;
    }

    public void setCuentaEmpresa(Cuenta cuentaEmpresa) {
        this.cuentaEmpresa = cuentaEmpresa;
    }

    public Empleados[] getEmpleados() {
        return empleados;
    }

    public void setEmpleados(Empleados[] empleados) {
        this.empleados = empleados;
    }

    
    
    public boolean contratar(Empleados empleado) {
        if (numeroEmpleados < empleados.length) {
            empleados[numeroEmpleados++] = empleado;
            return true;
        }
        return false;
    }

    public Empleados devolverEmpleado(int posicion) {
        if (posicion >= 0 && posicion < numeroEmpleados) {
            return empleados[posicion];
        }
        return null;
    }

    public boolean pagarNomina(int posicion) {
        if (posicion >= 0 && posicion < numeroEmpleados) {
            Empleados empleado = empleados[posicion];
            double importe = empleado.getSalario() + empleado.extras();
            return cuentaEmpresa.transferencia(empleado.getCuentaEmpleado(), importe);
        }
        return false;
    }

    public void listarEmpleados() {
        for (int i = 0; i < numeroEmpleados; i++) {
            empleados[i].datosEmpleados();
        }
    }

    public void datosEmpresa() {
        System.out.println("Nombre empresa: " + nombreEmpresa);
        System.out.println("CIF: " + cif);
        System.out.println("Saldo cuenta empresa: " + cuentaEmpresa.getSaldo());
    }
    
}

