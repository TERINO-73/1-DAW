Algoritmo ej_Segun2
		Definir num1, num2 Como Entero
		Definir resultado Como Real
		Definir op Como Caracter
		
		Escribir"Introduzca el primer numero"
		Leer num1
		Escribir"Introduzca el Segundo numero"
		Leer num2
		Repetir
			Borrar Pantalla
			Escribir "MENU"
			Escribir "a) Sumar (n1 + n2)"
			Escribir "b) Restar (n1 - n2)"
			Escribir "c) Multiplicar (n1 * n2)"
			Escribir "d) Dividir (n1 / n2)"
			Escribir "s) Salir"
			
			Escribir "Introduzca la opci?n elegida (a|b|c|d):"
			Leer op
			
			Segun (op) Hacer
				'a':
					resultado = num1 + num2
					Escribir "El resultado de la suma es: ", resultado
				'b':
					resultado = num1 - num2
					Escribir "El resultado de la resta es: ", resultado
				'c':
					resultado = num1 * num2
					Escribir "El resultado de la multiplicacion es: ", resultado
				'd':
					resultado = num1 / num2
					Escribir "El resultado de la division es: ", resultado
			Fin Segun
			Escribir "Pulse una tecla para continuar"
			Esperar Tecla
		Mientras Que op <> 's'
		
FinAlgoritmo

