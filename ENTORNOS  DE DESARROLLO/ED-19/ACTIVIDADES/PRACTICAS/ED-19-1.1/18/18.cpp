INICIO <16.3>
	esta_valor <-"NO"
	cont_elem <- 0
	contador <- 0
	numero <- 0 
	valor <- 50	
	
		
		Escribir "Introduzca el numero de intentos"
		Leer cont_elem
		Mientras (cont_elem=contador)
			
			Escribir "introduzca un numero"
			Leer numero
			
			Si cont_elem = valor Entonces
				esta_valor ="SI"
			FinSi
			contador = contador + 1
			
		Repetir
	
	Si esta_valor -> "SI" Entonces
		Escribir "Ha escrito el numero ",valor
	SiNo
		Escribir "No ha escrito en ",valor
	FinSi

FIN <16.1>
	
	INICIO<16.3>
		<Inicialiciacion_variables>
		<Leer_nº_intentos>
		Mientras (cont_elem=contador)
			<entra_numero>
			<proceso>
		Repetir
		<Mostrar Resultado>
	FIN<16.3>
	
	
	
	
	INICIO<Inicialiciacion_variables>
		esta_valor <-"NO"
		cont_elem <- 0
		contador <- 0
		numero <- 0 
		valor <- 50
		
	FIN<Inicialiciacion_variables>
	
	INICIO<entra_numero>
		Escribir "introduzca un numero"
		Leer cont_elem
	FIN<entra_numero>
	
	INICIO<proceso>
		Si cont_elem = num_elem Entonces
				esta_valor ="SI"
		FinSi
			contador = contador + 1
	FIN<Proceso>
	
	INICIO<Mostrar Resultado>
		Si esta_valor -> "SI" Entonces
		Escribir "Ha escrito el numero ",valor
	SiNo
		Escribir "No ha escrito en ",valor
	FinSi
	FIN<Mostrar Resultado>
	
	INICIO<Leer_nº_intentos>
		Escribir"Introduzca el numero de intentos"
		Leer cont_elem
	FIN<Leer_nº_intentos>