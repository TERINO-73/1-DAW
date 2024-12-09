package colegio;

/**
 *
 * @author jTERINO
 */
import java.util.Scanner;

public class Grupo {

    private String curso;
    private Alumno[] alumnos = new Alumno[10];
    private int numAlumnos;
    private Scanner scanner = new Scanner(System.in);

    // Constructor por defecto
    public Grupo() {
        this.curso = "";
        this.numAlumnos = 0;
    }

    // Constructor por parámetros
    public Grupo(String curso) {
        this.curso = curso;
        this.numAlumnos = 0;
    }

    // Getters y setters
    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    // Métodos adicionales

    public void listadoAlumnos() {
        for (int i = 0; i < numAlumnos; i++) {
            alumnos[i].boletín();
        }
    }

    public boolean insertarAlumno() {
        if (numAlumnos == alumnos.length) {
            return false;
        }
        System.out.println("Introduzca los datos del alumno:");
        String dni = leerString("DNI: ");
        String nombre = leerString("Nombre: ");
        int edad = leerInt("Edad: ");
        alumnos[numAlumnos++] = new Alumno(dni, nombre, edad);
        return true;
    }

    public Alumno buscarAlumno(String nombre) {
        for (int i = 0; i < numAlumnos; i++) {
            if (alumnos[i].getNombre().equals(nombre)) {
                return alumnos[i];
            }
        }
        return null;
    }

    public void evaluar() {
        for (int i = 0; i < numAlumnos; i++) {
            alumnos[i].rellenaNotas();
        }
    }

    public double mediaGrupo() {
        double sumaNotasFinales = 0;
        int numNotasValidas = 0;
        for (int i = 0; i < numAlumnos; i++) {
            double notaFinal = alumnos[i].notaFinal();
            if (notaFinal != -1) {
                sumaNotasFinales += notaFinal;
                numNotasValidas++;
            }
        }
        return numNotasValidas > 0 ? sumaNotasFinales / numNotasValidas : -1;
    }

    private String leerString(String mensaje) {
        System.out.print(mensaje);
        return scanner.nextLine();
    }

    private int leerInt(String mensaje) {
        System.out.print(mensaje);
        return scanner.nextInt();
    }
}
