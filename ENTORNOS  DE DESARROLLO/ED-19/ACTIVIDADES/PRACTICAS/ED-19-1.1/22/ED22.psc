Algoritmo ED22
	Definir valo, esta_valor, cont_elem, num_elem,n Como Entero
	valo <- 0
	esta_valor <- 0
	cont_elem <- 0
	num_elem <- 0
	Escribir 'Introducir valor a buscar'
	Leer valo
	Escribir 'Introducir n� elementos de la serie'
	Leer num_elem
	Escribir 'Introducir n� '
	Leer n
	Mientras ((cont_elem<>num_elem) Y (n<>0)) Hacer
		Si (n=valo) Entonces
			esta_valor <- esta_valor+1
		FinSi
		cont_elem <- cont_elem+1
		Escribir 'Introducir n� '
		Leer n
	FinMientras
	Si (esta_valor>=1) Entonces
		Escribir 'El n� ', valo, ' est� ', esta_valor, ' veces'
	SiNo
		Escribir 'No est� el n� ', valo
	FinSi
FinAlgoritmo
