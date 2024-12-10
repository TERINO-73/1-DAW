Algoritmo v23
	Definir esta_valor,cont_elem,contador,v,vprog,n_intentos como entero
	esta_valor <-0
	cont_elem<-1
	contador <- 0
	v <-0
	vprog<-1
	Escribir"Introduzca cuantas veces quieres hacer el programa"
	Leer vprog
	
	Mientras vprog<>0		
		Escribir"Introduzca el numero a buscar"
		Leer v
		Escribir "Introduzca el numero de intentos"
		Leer n_intentos
		Escribir "introduzca un numero"
		Leer cont_elem
		
		Mientras (cont_elem<>0 Y contador<>n_intentos )
			
			Escribir "introduzca un numero"
			Leer cont_elem
			Si cont_elem = v Entonces
				esta_valor =esta_valor+1
			FinSi
			contador=contador+1
			
		FinMientras
		
				vprog=vprog-1
	
				Escribir "El número ",v," ha salido ",esta_valor," veces"
	FinMientras
FinAlgoritmo
