Algoritmo ED19
	Definir valo, cont_elem Como Entero
	Definir esta_valor Como Lógico
	esta_valor <- Falso
	contador <- 0
	valo <- 50
	Escribir 'introduzca un numero'
	Leer cont_elem
	Mientras (cont_elem=contador) Hacer
		Escribir 'introduzca un numero'
		Leer cont_elem
		Si cont_elem=valor Entonces
			esta_valor <- Verdadero
		FinSi
	FinMientras
	Si esta_valor=Verdadero Entonces
		Escribir 'Ha escrito el numero ', valo
	SiNo
		Escribir 'No ha escrito en ', valo
	FinSi
FinAlgoritmo
