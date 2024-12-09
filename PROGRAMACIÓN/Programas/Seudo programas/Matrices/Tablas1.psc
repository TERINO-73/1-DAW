Funcion RellenarAleatorioT(t Por Referencia, f, c)
	Definir i, j Como Entero
	Para i=0 Hasta f-1 Con Paso 1 Hacer
		Para j=0 Hasta c-1 Con Paso 1 Hacer
			t[i,j] = Aleatorio(0,1)
		Fin Para
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
	Definir tabla Como Entero
	Dimension tabla[10,10]
	
	RellenarAleatorioT(tabla, 10,10)
	VerT( tabla, 10, 10)
FinAlgoritmo



