Algoritmo ED21
	Definir valo, cont_elem, num_elem, n Como Entero
	Definir esta_valor Como L�gico
	valor <- 50
	esta_valor <- Falso
	cont_elem <- 0
	num_elem <- 25
	Repetir
		Escribir 'Introducir n� '
		Leer n
		Si (n=valo) Entonces
			esta_valor <- verdadero
		FinSi
		cont_elem <- cont_elem+1
	Hasta Que (cont_elem=num_elem)
	Si (esta_valor=verdadero) Entonces
		Escribir 'Est� el n� ', valo
	SiNo
		Escribir 'No est� el n� ', valo
	FinSi
FinAlgoritmo
