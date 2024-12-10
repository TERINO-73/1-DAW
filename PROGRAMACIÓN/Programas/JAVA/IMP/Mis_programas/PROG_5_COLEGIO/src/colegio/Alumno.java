package colegio;

/**
 * @author jTERINO
 */
public class Alumno {

    private String dni;
    private String nombre;
    private int edad;
    private int[] notas = new int[3];


    public Alumno() {
        this.dni = "";
        this.nombre = "";
        this.edad = 0;
        for (int i = 0; i < notas.length; i++) {
            notas[i] = -1;
        }
    }


    public Alumno(String dni, String nombre, int edad) {
        this.dni = dni;
        this.nombre = nombre;
        this.edad = edad;
        for (int i = 0; i < notas.length; i++) {
            notas[i] = -1;
        }
    }


    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getNota(int trimestre) {
        if (trimestre < 1 || trimestre > 3) {
            throw new IllegalArgumentException("Trimestre no válido");
        }
        return notas[trimestre - 1];
    }

    public void setNota(int trimestre, int nota) {
        if (trimestre < 1 || trimestre > 3) {
            throw new IllegalArgumentException("Trimestre no válido");
        }
        if (nota < 0 || nota > 10) {
            throw new IllegalArgumentException("Nota no válida");
        }
        notas[trimestre - 1] = nota;
    }



    public double notaFinal() {
        int sumaNotas = 0;
        int numNotasValidas = 0;
        for (int nota : notas) {
            if (nota != -1) {
                sumaNotas += nota;
                numNotasValidas++;
            }
        }
        return numNotasValidas > 0 ? (double) sumaNotas / numNotasValidas : -1;
    }

    public void boletín() {
        System.out.printf("%s - %s (%d años): %.2f\n", dni, nombre, edad, notaFinal());
    }

    public void rellenaNotas() {
        for (int i = 0; i < notas.length; i++) {
            notas[i] = (int) (Math.random() * 11);
        }
    }
}