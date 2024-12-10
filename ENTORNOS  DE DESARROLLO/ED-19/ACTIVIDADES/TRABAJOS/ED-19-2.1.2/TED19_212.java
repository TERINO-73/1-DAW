import java.util.Random;
import java.util.Scanner;

public class TED19_212 {

    public static void main(String[] args) {
        Random random = new Random();
        int numeroAleatorio = random.nextInt(100) + 1;       
        int intentos = 0;      
        Scanner scanner = new Scanner(System.in);  
        
        while (true) {
            System.out.print("Adivina el número (entre 1 y 100): ");
            int suposicion = scanner.nextInt();

            intentos++;
            if (suposicion > 0 || suposicion < 100){
                if (suposicion == numeroAleatorio) {
                    System.out.println("¡Felicidades! Adivinaste el número en " + intentos + " intentos.");
                    break;
                } else if (suposicion < numeroAleatorio) {
                    System.out.println("Tu suposición es demasiado baja. Inténtalo de nuevo.");
                } else {
                    System.out.println("Tu suposición es demasiado alta. Inténtalo de nuevo.");
                }
            } else{System.out.println("Tu suposición no esta entre el 1 y 100 escriba un numero entre 1 y 100");}
        }
        scanner.close();
    }
}
