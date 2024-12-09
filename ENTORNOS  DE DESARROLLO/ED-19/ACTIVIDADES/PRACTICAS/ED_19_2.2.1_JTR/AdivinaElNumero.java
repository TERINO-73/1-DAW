import java.util.Random;
import java.util.Scanner;

/**
 * Clase principal del juego Adivina el Número.
 *
 * @author [Jesús Terino Rodriguez ]
 * @version 3.0
 * @since 2024-05-12
 */
public class AdivinaElNumero {

    /**
     * Punto de entrada del programa.
     *
     * @param args Argumentos de línea de comandos.
     */
    public static void main(String[] args) {
        Random random = new Random();
        Scanner sc = new Scanner(System.in);

        /**
         * Número aleatorio que el usuario debe adivinar.
         *
         * @see java.util.Random#nextInt(int)
         */
        int numeroSecreto = random.nextInt(100) + 1; // Número aleatorio entre 1 y 100

        /**
         * Número de intentos restantes para adivinar el número secreto.
         */
        int intentosRestantes = 10;

        System.out.println("¡Bienvenido al juego Adivina el Número!");
        System.out.println("Tienes " + intentosRestantes + " intentos para adivinar un número entre 1 y 100.");
        int intento;
        do {
            System.out.print("Ingresa tu suposición: ");
            intento = sc.nextInt();

            if (intento == numeroSecreto) {
                System.out.println("¡Felicidades! Adivinaste el número en " + (10 - intentosRestantes) + " intentos.");
                break;
            } else if (intento < numeroSecreto) {
                System.out.println("Tu suposición es demasiado baja. Intenta de nuevo.");
            } else {
                System.out.println("Tu suposición es demasiado alta. Intenta de nuevo.");
            }

            intentosRestantes--;
        } while (intentosRestantes > 0 && intento != numeroSecreto);

        if (intentosRestantes == 0) {
            System.out.println("¡Has perdido! El número secreto era: " + numeroSecreto);
        }

        sc.close();
    }

    /**
     * Método que verifica si la entrada del usuario es un número válido.
     *
     * @param entrada Cadena que contiene la entrada del usuario.
     * @return `true` si la entrada es un número válido, `false` en caso contrario.
     * @throws NumberFormatException Si la entrada no es un número.
     */
    private static boolean esNumeroValido(String entrada) {
        try {
            Integer.parseInt(entrada);
            return true;
        } catch (NumberFormatException e) {
            return false;
        }
    }
}



