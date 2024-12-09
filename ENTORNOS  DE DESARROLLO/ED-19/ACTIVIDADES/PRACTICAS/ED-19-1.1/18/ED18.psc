Algoritmo ED18
	Definir valo, cont_elem, num_elem, n Como Entero
	Definir esta_valor Como Lógico
	esta_valor <- Falso
	cont_elem <- 0
	contador <- 0
	n <- 0
	valo <- 50
	Escribir 'Introduzca el numero de intentos'
	Leer cont_elem
	Mientras (cont_elem=contador) Hacer
		Escribir 'introduzca un numero'
		Leer n
		Si cont_elem=valo Entonces
			esta_valor <- Verdadero
		FinSi
		contador <- contador+1
	FinMientras
	Si esta_valor=Verdadero Entonces
		Escribir 'Ha escrito el numero ', valo
	SiNo
		Escribir 'No ha escrito en ', valo
	FinSi
FinAlgoritmo
