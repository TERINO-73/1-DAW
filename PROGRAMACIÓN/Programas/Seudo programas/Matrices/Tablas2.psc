Funcion RellenarAleatorioT(t Por Referencia, f, c)
	Definir i, j Como Entero
	Para i=0 Hasta f-1 Con Paso 1 Hacer
		Si i=0 o i=7 Entonces
			Para j=0 Hasta c-1 Con Paso 1 Hacer
				
				Si j=0 o j=7 Entonces
					t[i,j] = "T"
				FinSi
				Si j=1 o j=6 Entonces
					t[i,j] = "C"
				FinSi
				Si j=2 o j=5 Entonces
					t[i,j] = "A"
				FinSi
				Si j=3 Entonces
					t[i,j] = "D"
				FinSi
				Si j=4 Entonces
					t[i,j] = "R"
				FinSi
			Fin Para
		FinSi
		
		Si i=2 o i=5 o i=3  o i=4 Entonces
			Para j=0 Hasta c-1 Con Paso 1 Hacer
				t[i,j] = "-"
			Fin Para
		FinSi
		
		Si i=6 o i=1 Entonces
			Para j=0 Hasta c-1 Con Paso 1 Hacer
				t[i,j] = "P"
			Fin Para
		FinSi
		
		
	Fin Para
FinFuncion



Funcion VerT(t, f, c)
	Definir i, j Como Entero
	Para i=0 Hasta f-1 Con Paso 1 Hacer
		Para j=0 Hasta c-1 Con Paso 1 Hacer
			Escribir t[i,j], " " Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
FinFuncion


Algoritmo Tablas
	Definir tabla Como caracter
	Dimension tabla[8,8]
	
	RellenarAleatorioT(tabla, 8,8)
	VerT( tabla, 8, 8)
FinAlgoritmo
