package cuenta;

/**
 * @author TERINO
 */
public class Cuenta {

    String nombre;
    String numeroCuenta;
    double tipoInteres;
    double saldo;

    public Cuenta() {
        this.nombre = "";
        this.numeroCuenta = "";
        this.tipoInteres = 0.0;
        this.saldo = 0.0;
    }

    public Cuenta(String nombre, String numeroCuenta, double tipoInteres, double saldo) {
        this.nombre = nombre;
        this.numeroCuenta = numeroCuenta;
        this.tipoInteres = tipoInteres;
        this.saldo = saldo;
    }

    public Cuenta(Cuenta copia) {
        this.nombre = copia.nombre;
        this.numeroCuenta = copia.numeroCuenta;
        this.tipoInteres = copia.tipoInteres;
        this.saldo = copia.saldo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNumeroCuenta() {
        return numeroCuenta;
    }

    public void setNumeroCuenta(String numeroCuenta) {
        this.numeroCuenta = numeroCuenta;
    }

    public double getTipoInteres() {
        return tipoInteres;
    }

    public void setTipoInteres(double tipoInteres) {
        this.tipoInteres = tipoInteres;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }


    public String toString() {
        StringBuilder ter = new StringBuilder();
        ter.append("Nombre cuenta: ").append(nombre);
        ter.append("Número cuenta:").append(numeroCuenta);
        ter.append("Tipo Interes:").append(tipoInteres);
        ter.append("Saldo:").append(saldo);
        return ter.toString();
    }

    public boolean ingreso(double cantidad) {
        boolean operacionRealizada;
        operacionRealizada = false;
        if (cantidad > 0) {
            saldo = saldo + cantidad;
            operacionRealizada = true;
        }
        return operacionRealizada;
    }

    public boolean reintegro(double cantidad) {
        boolean operacionRealizada;
        operacionRealizada=false;
            if (cantidad > 0 && cantidad < saldo){
                saldo = saldo - cantidad;
                operacionRealizada=true;
                
            }
            return operacionRealizada;
    }
    
    public boolean transferencia (Cuenta cuentaDestino ,double importe){
        boolean opRealizada= false;
        if (reintegro(importe)){
            opRealizada = cuentaDestino.ingreso(importe) ;
        }
        return opRealizada;
    }
}
    

