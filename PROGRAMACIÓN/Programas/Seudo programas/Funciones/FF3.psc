
Funcion n=exponen(n,expo,c,resultado)
	Para c=2 Hasta expo Con Paso 1 Hacer
		n=resultado*n
	Fin Para
FinFuncion

Algoritmo FF3
	Definir n,expo,resultado,c Como Entero
	Escribir "Dime un numero y su exponente y yo te dire el resultado de la potencia"
	Leer n
	Leer expo
	c=0
	resultado=n
	n=exponen(n,expo,c,resultado)
	
	Escribir n
FinAlgoritmo
