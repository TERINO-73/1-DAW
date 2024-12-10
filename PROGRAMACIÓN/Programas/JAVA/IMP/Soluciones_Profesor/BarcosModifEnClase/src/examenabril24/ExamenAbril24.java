/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package examenabril24;

/**
 *
 * @author jmriv
 */
public class ExamenAbril24 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        EmpresaAlquiler miEmpresa = new EmpresaAlquiler("Barquitos de papel", "Jose Maria Rivera", "A123", 1000.0);
        cargarDatos(miEmpresa);
        Barco miBarco = null;
        
        int opcion = menu();
        while (opcion != 0) {
            switch (opcion) {
                case 1:
                    miEmpresa.verDatos();
                    if (Entrada.leerBoolean("Quiere cambiar el propietario?(s|n)")) {
                        miEmpresa.setPropietario(Entrada.leerCadena("Nuevo propietario: "));
                    }
                    break;
                case 2:
                    switch (Entrada.leerEntero("\n1.- Todas.\n2.- Veleros\n3.- Lanchas\nElija opcion: ")) {
                        case 1:
                            miEmpresa.listarBarcos();
                            break;
                        case 2:
                            miEmpresa.listarVeleros();
                            break;
                        case 3:
                            miEmpresa.listarLanchas();
                            break;
                        default:
                            System.out.println("Opcion no valida.");
                    }
                    break;
                case 3:
                    miBarco = miEmpresa.pedirDatosEmbarcacion();
                    if (miBarco != null) {
                        miEmpresa.insertarEmbarcacion(miBarco);
                    }
                    break;
                case 4:
                    String matricula = Entrada.leerCadena("Matri­cula a buscar: ");
                    int pos = miEmpresa.buscarEmbarcacion(matricula);
                    if (pos >= 0) {
                        miEmpresa.buscarEmbarcacion(pos).verDatos();
                        if (Entrada.leerBoolean("Desea borrarla?")) {
                            miEmpresa.borrarEmbarcacion(pos);
                        }
                    }
                    break;
                case 5:
/*                    int criterio = Entrada.leerEntero("\nOrdenar por:\n1.- Matriculas.\n2.- Esloras.\n3.- Precios de alquiler.\n Con la opcion en negativo ordena en orden inverso.\nOpcion?");
                    switch (criterio) {
                        case 1:
                        case 2:
                        case 3:
                        case -1:
                        case -2:
                        case -3:*/
                            miEmpresa.ordenar();
                            miEmpresa.listarBarcos();
                          /*  break;
                        default:
                            System.out.println("Opcion incorrecta.");
                    }
                    break;*/
            }
            Entrada.leerCadena("\nPulse INTRO para continuar.");
            opcion = menu();
        }
        miEmpresa.crearXML();
        miEmpresa.crearBarcos();
        miEmpresa.crearVeleros();
        miEmpresa.crearLanchas();
        System.out.println("Fin de la ejecucion de la aplicacion.");
    }

    /**
     * Metodo que muestra el menu
     *
     * @return la opcion elegida por el usuario
     */
    public static int menu() {
        int opcion;
        System.out.println("Alquiler de embarcaciones");
        System.out.println("-------------------------");
        System.out.println("1. Consultar datos de la empresa/¿Modificar propietario?.");
        System.out.println("2. Listado de embarcaciones: todas, veleros o lanchas.");
        System.out.println("3. Insertar una nueva embarcacion.");
        System.out.println("4. Buscar una embarcacion por su matri­cula: ver datos y ¿borrarla?");
        System.out.println("5. Ordenar las embarcaciones por: matri­cula|eslora|precio de alquiler");
        System.out.println("0. Salir");
        opcion = Entrada.leerEntero("\nOpcion?: ");
        return opcion;
    }

    /**
     * Metodo para cargar 5 embarcaciones en el array para pruebas
     *
     * @param empresa Objeto de la aplicacion parqa cargar las embarcaciones
     */
    public static void cargarDatos(EmpresaAlquiler empresa) {
        Barco unBarco;
        unBarco = new Velero(1, 3, "N10", 5, 3, true);
        empresa.insertarEmbarcacion(unBarco);
        unBarco = new Lancha(100, "Z10", 6, 3, true);
        empresa.insertarEmbarcacion(unBarco);
        unBarco = new Velero(2, 6, "A10", 10, 3, true);
        empresa.insertarEmbarcacion(unBarco);
        unBarco = new Lancha(150, "J10", 8, 2, true);
        empresa.insertarEmbarcacion(unBarco);
        unBarco = new Velero(1, 4, "F10", 6, 2, true);
        empresa.insertarEmbarcacion(unBarco);
    }

}
