package colegio;

/**
 * @author jTERINO
 */

import java.util.Scanner;

public class Colegio {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);


        Grupo grupo = new Grupo("2º DAW");

        int opcion;
        do {

            System.out.println("\nCOLEGIO");
            System.out.println("-----------------");
            System.out.println("1. Consultar/Modificar nombre del grupo");
            System.out.println("2. Listado de alumnos del grupo");
            System.out.println("3. Matricular un alumno");
            System.out.println("4. Evaluar todos los alumnos (nota aleatoria)");
            System.out.println("5. Ver nota media del grupo");
            System.out.println("6. Buscar un alumno por su nombre/ cambiar nota");
            System.out.println("0. Salir");
            System.out.print("Introduzca una opción: ");

            opcion = scanner.nextInt();

            switch (opcion) {
                case 1:

                    System.out.println("Nombre actual del grupo: " + grupo.getCurso());
                    System.out.print("¿Desea cambiarlo? (s/n): ");
                    String respuesta = scanner.next();
                    if (respuesta.equalsIgnoreCase("s")) {
                        System.out.print("Introduzca el nuevo nombre: ");
                        String nuevoNombre = scanner.next();
                        grupo.setCurso(nuevoNombre);
                    }
                    break;
                case 2:

                    System.out.println("\nListado de alumnos:");
                    grupo.listadoAlumnos();
                    break;
                case 3:

                    if (grupo.insertarAlumno()) {
                        System.out.println("Alumno matriculado correctamente.");
                    } else {
                        System.out.println("No hay plazas disponibles.");
                    }
                    break;
                case 4:

                    grupo.evaluar();
                    System.out.println("Notas de los alumnos actualizadas aleatoriamente.");
                    break;
                case 5:

                    double mediaGrupo = grupo.mediaGrupo();
                    String mensajeMedia = mediaGrupo == -1 ? "No se puede calcular la media" : "Media del grupo: " + mediaGrupo;
                    System.out.println(mensajeMedia);
                    break;
                case 6:

                    System.out.print("Introduzca el nombre del alumno: ");
                    String nombre = scanner.next();
                    Alumno alumno = grupo.buscarAlumno(nombre);
                    if (alumno == null) {
                        System.out.println("Alumno no encontrado.");
                    } else {
                        System.out.println("Datos del alumno:");
                        alumno.boletín();
                        System.out.print("¿Desea cambiar alguna nota? (s/n): ");
                        respuesta = scanner.next();
                        if (respuesta.equalsIgnoreCase("s")) {
                            int trimestre;
                            do {
                                System.out.print("Introduzca el trimestre (1-3): ");
                                trimestre = scanner.nextInt();
                            } while (trimestre < 1 || trimestre > 3);
                            int nuevaNota;
                            do {
                                System.out.print("Introduzca la nueva nota: ");
                                nuevaNota = scanner.nextInt();
                            } while (nuevaNota < 0 || nuevaNota > 10);
                            alumno.setNota(trimestre, nuevaNota);
                            System.out.println("Nota actualizada correctamente.");
                        }
                    }
                    break;
                case 0:

                    System.out.println("Saliendo de la aplicación...");
                    break;
                default:
                    System.out.println("Opción no válida.");
            }
        } while (opcion != 0);

        scanner.close();
    }
}
