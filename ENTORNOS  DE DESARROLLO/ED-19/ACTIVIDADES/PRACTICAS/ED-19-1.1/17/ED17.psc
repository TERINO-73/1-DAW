Algoritmo ED17
	Definir valo, cont_elem, num_elem, n Como Entero
	Definir esta_valor Como Lógico
	esta_valor <- Verdadero
	cont_elem <- 0
	n <- 0
	valo <- 50
	num_elem <- 25
	Repetir
		Escribir 'introduzca un numero'
		Leer numero
		Si cont_elem=valor Entonces
			esta_valor <- Verdadero
		FinSi
		contador <- contador+1
	Hasta Que contador=num_elem
	Si esta_valor=Verdadero Entonces
		Escribir 'Ha escrito el numero ', valo
	SiNo
		Escribir 'No ha escrito en ', valo
	FinSi
FinAlgoritmo
