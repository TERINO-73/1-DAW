Algoritmo ED20
	Definir contador,valo,n_intentos,cont_elem Como Entero
	Definir esta_valor Como Logico
	esta_valor <-Falso
	
	contador <- 0
	valo <-50
	
	Escribir"Introduzca el numero a buscar"
	Leer valo
	Escribir "Introduzca el numero de intentos"
	Leer n_intentos
	Escribir "introduzca un numero"
	Leer cont_elem
	
	Mientras (cont_elem<>0 Y contador<>n_intentos )
		
		Escribir "introduzca un numero"
		Leer cont_elem
		Si cont_elem = valo Entonces
			esta_valor =Verdadero
		FinSi
		contador=contador+1
		
	FinMientras
	
			
			Si esta_valor= Verdadero Entonces
				Escribir "Ha escrito el numero ",valo
			SiNo
				Escribir "No ha escrito en ",valo
			FinSi
FinAlgoritmo
