/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package gestoniarempresa;

/**
 *
 * @author jesus_dtd
 */
import java.util.Scanner;

public class GestionarEmpresa {

    private static Empresa empresa;
    private static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        empresa = new Empresa("TERINOEMPRESA", "A12345678", 20000.0);

        int opcion;
        do {
            mostrarMenu();
            opcion = leerOpcion();
            procesarOpcion(opcion);
        } while (opcion != 0);
    }

    private static void mostrarMenu() {
        System.out.println("\n**MENU GESTIÓN EMPRESA**");
        System.out.println("-------------------------");
        System.out.println("1. Ver/modificar datos empresa");
        System.out.println("2. Contratar empleado");
        System.out.println("3. Ver datos de un empleado");
        System.out.println("4. Ver datos de todos los empleados");
        System.out.println("5. Pagar todas las nóminas");
        System.out.println("6. Ingresar en la cuenta de la empresa");
        System.out.println("0. Salir");
    }

    private static int leerOpcion() {
        int opcion;
        do {
            System.out.print("Introduzca una opción (0-6): ");
            try {
                opcion = Integer.parseInt(scanner.nextLine());
            } catch (NumberFormatException e) {
                opcion = -1;
            }
        } while (opcion < 0 || opcion > 6);
        return opcion;
    }

    private static void procesarOpcion(int opcion) {
        switch (opcion) {
            case 1:
                verModificarDatosEmpresa();
                break;
            case 2:
                contratarEmpleado();
                break;
            case 3:
                verDatosEmpleado();
                break;
            case 4:
                verDatosTodosEmpleados();
                break;
            case 5:
                pagarTodasNominas();
                break;
            case 6:
                ingresarEnCuentaEmpresa();
                break;
        }
    }

    private static void verModificarDatosEmpresa() {
        System.out.println("\n**Datos empresa:**");
        System.out.println("Nombre: " + empresa.getNombreEmpresa());
        System.out.println("CIF: " + empresa.getCif());
        System.out.println("Saldo cuenta empresa: " + empresa.getCuentaEmpresa().getSaldo());

        String nuevoNombre;
        System.out.println("Introduzca el nuevo nombre (o pulse Intro para no modificar): ");
        nuevoNombre = scanner.next();
        if (!nuevoNombre.isEmpty()) {
            empresa.setNombreEmpresa(nuevoNombre);
        }
        

        String nuevoCif;
        System.out.println("Introduzca el nuevo CIF (o pulse Intro para no modificar): ");
        nuevoCif = scanner.nextLine();
        if (!nuevoCif.isEmpty()) {
            empresa.setCif(nuevoCif);
        }
    }

    private static void contratarEmpleado() {
       Empleados empleado = empresa.devolverEmpleado(3);
        if (empresa.contratar(empleado)) {
            System.out.println("Empleado contratado correctamente.");
        } else {
            System.out.println("No se ha podido contratar al empleado. Límite de empleados alcanzado.");
        }
    }

    private static void verDatosEmpleado() {
        int posicion;
        System.out.println("Introduzca la posición del empleado del que quiera sus datos");
        posicion = scanner.nextInt();
        if (posicion >= 0) {
            Empleados empleado = empresa.devolverEmpleado(posicion);
            empleado.datosEmpleados();
        } else {
            System.out.println("Posición incorrecta.");
        }
    }

    private static void verDatosTodosEmpleados() {
        System.out.println("\n**Datos de todos los empleados:**");
        for (int i = 0; i < empresa.getNumeroEmpleados(); i++) {
            empresa.devolverEmpleado(i).datosEmpleados();
        }
    }

    private static void pagarTodasNominas() {
        boolean todasPagadas = true;
        int pagadas= 0;
        for (int i = 0; i < empresa.getNumeroEmpleados(); i++) {
            if (!empresa.pagarNomina(i)) {
                todasPagadas = false;
                empresa.pagarNomina(i);
                pagadas++;
                break;
            }
        }
        if (todasPagadas= false){
            System.out.println("Se han pagado "+pagadas+"");
        }


    }
    
    private static void ingresarEnCuentaEmpresa(){
        
        int cantidad;
        System.out.println("Introduzca la cantidad de dinero que quieras ingresar a la empresa");
        cantidad = scanner.nextInt();
        empresa.getCuentaEmpresa().ingreso(cantidad) ; 
    }

    
 }
