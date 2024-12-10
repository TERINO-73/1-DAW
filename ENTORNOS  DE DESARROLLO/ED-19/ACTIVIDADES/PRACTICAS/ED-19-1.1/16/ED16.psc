Algoritmo ED16
	Definir valo, cont_elem, num_elem, n Como Entero
	Definir esta_valor Como Lógico
	esta_valor <- Verdadero
	cont_elem <- 0
	contador <- 1
	Repetir
		Escribir 'introduzca un numero'
		Leer cont_elem
		Si cont_elem=50 Entonces
			esta_valor <- Verdadero
		FinSi
		contador <- contador+1
	Hasta Que contador=25
	Si esta_valor=Verdadero Entonces
		Escribir 'Ha escrito el numero 50'
	SiNo
		Escribir 'No ha escrito en 50'
	FinSi
FinAlgoritmo
