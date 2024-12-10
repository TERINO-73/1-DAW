/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package biblioteca;

/**
 *
 * @author jmrivera
 */
public class Libro {
    private String titulo;
    private String autor;
    private int numeroEjemplares;
    private int numeroEjemplaresPrestados;

    public Libro(String titulo, String autor, int numeroEjemplares, int numeroEjemplaresPrestados) {
        this.titulo = titulo;
        this.autor = autor;
        this.numeroEjemplares = numeroEjemplares;
        this.numeroEjemplaresPrestados = numeroEjemplaresPrestados;
    }

    public Libro() {
        this.titulo = "";
        this.autor = "";
        this.numeroEjemplares = 0;
        this.numeroEjemplaresPrestados = 0;
    }

    public Libro(Libro copia) {
        this.titulo = copia.titulo;
        this.autor = copia.autor;
        this.numeroEjemplares = copia.numeroEjemplares;
        this.numeroEjemplaresPrestados = copia.numeroEjemplaresPrestados;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public int getNumeroEjemplares() {
        return numeroEjemplares;
    }

    public void setNumeroEjemplares(int numeroEjemplares) {
        this.numeroEjemplares = numeroEjemplares;
    }

    public int getNumeroEjemplaresPrestados() {
        return numeroEjemplaresPrestados;
    }

    public void setNumeroEjemplaresPrestados(int numeroEjemplaresPrestados) {
        this.numeroEjemplaresPrestados = numeroEjemplaresPrestados;
    }
    /**
     * 
     * @return 
     */
    public boolean prestamo(){
        boolean operacionRealizada = false;
        if (numeroEjemplares > numeroEjemplaresPrestados){
            numeroEjemplaresPrestados++;
            operacionRealizada = true;
        }
        return operacionRealizada;
    }
    
    /**
     * 
     * @return 
     */
    public boolean devolucion(){
        boolean operacionRealizada = false;
        if (numeroEjemplaresPrestados > 0){
            numeroEjemplaresPrestados--;
            operacionRealizada = true;
        }
        return operacionRealizada;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Titulo: ").append(titulo);
        sb.append("\nAutor: ").append(autor);
        sb.append("\nEjemplares: ").append(numeroEjemplares);
        sb.append("\nPrestados: ").append(numeroEjemplaresPrestados);
        sb.append('\n');
        return sb.toString();
    }
    
    
}
