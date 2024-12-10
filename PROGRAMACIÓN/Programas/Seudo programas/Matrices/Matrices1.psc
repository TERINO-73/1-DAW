Funcion VerV1(v,tam)
	Definir i Como Entero
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		
		Escribir v[i] " " Sin Saltar
		
		
	Fin Para
	Escribir " "
FinFuncion

Funcion VerV2(v,tam)
	Definir i Como Entero
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		
			Escribir v[i] " " Sin Saltar
	
		
	Fin Para
FinFuncion

Funcion RellenarV1(v,tam)
	Definir i Como Entero
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		v[i] = Aleatorio(1,2)
	Fin Para 
	Escribir " "
FinFuncion

Funcion RellenarV2(v,tam)
	Definir i Como Entero
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
	
			v[i] = Aleatorio(1,2)
	Fin Para
	
FinFuncion

Funcion Iguales(v1,tam,v2,tam)
	Definir i,verdad Como Entero
	verdad=0
	Escribir ""
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		Si v1[i] = v2[i] Entonces
			
			verdad=verdad+1
		FinSi
	Fin Para
	Si verdad=5 Entonces
		Escribir "VERDADERO"
	Sino 
		Escribir "FALSO"
	FinSi
	Escribir "  "
	
FinFuncion



Algoritmo Tablas
		Definir v1, v2 Como Entero
		Dimension v1[5] ,v2[5]
		
		RellenarV1(v1, 5)
		RellenarV2(v2, 5)
		VerV1(v1, 5)
		VerV2(v2, 5)
		Iguales(v1,5,v2,5)
FinAlgoritmo
