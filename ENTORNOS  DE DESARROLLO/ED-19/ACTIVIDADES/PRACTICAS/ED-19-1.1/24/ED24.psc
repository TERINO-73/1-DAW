Algoritmo ED24
	Definir esta_valor, cont_elem, contador, v Como Entero
	Definir vprog Como Lógico
	esta_valor <- 0
	cont_elem <- 1
	contador <- 0
	v <- 0
	vprog <- Verdadero
	Mientras vprog=Verdadero Hacer
		Escribir 'Introduzca el numero a buscar'
		Leer v
		Escribir 'Introduzca el numero de intentos'
		Leer n_intentos
		Escribir 'introduzca un numero'
		Leer cont_elem
	FinMientras
	Mientras (cont_elem<>0 Y contador<>n_intentos) Hacer
		Escribir 'introduzca un numero'
		Leer cont_elem
		Si cont_elem=v Entonces
			esta_valor <- esta_valor+1
		FinSi
		contador <- contador+1
	FinMientras
FinAlgoritmo
