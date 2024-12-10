Algoritmo ED25
	Definir total_repe, repe, valo, cont_elem, num_elem, n Como Entero
	Definir esta_valor Como Lógico
	Definir seguir Como Cadena
	total_repe <- 0
	repe <- 0
	seguir <- 'S'
	Escribir 'Introducir nº de repeticiones'
	Leer total_repe
	Mientras (repe<total_repe) Y (seguir='S') O (seguir='s') Hacer
		valo <- 0
		esta_valor <- Verdadero
		cont_elem <- 0
		num_elem <- 0
		Repetir
			Escribir 'Introducir valor a buscar'
			Leer valo
			Si ((valo<1) O (valo>100)) Entonces
				Escribir 'Valor fuera de rango: [1-100]'
			FinSi
		Hasta Que ((valo>=1) Y (valo<=100))
		Escribir 'Introducir nº elementos de la serie'
		Leer num_elem
		Escribir 'Introducir nº '
		Leer n
		Mientras ((cont_elem<>num_elem) Y (n<>0)) Hacer
			Si (n=valo) Entonces
				esta_valor <- Verdadero
			FinSi
			cont_elem <- cont_elem+1
			Escribir 'Introducir nº '
			Leer n
		FinMientras
		Si (esta_valor=Verdadero) Entonces
			Escribir 'El nº ', valo, ' está ', esta_valor, ' veces'
		SiNo
			Escribir 'No está el nº ', valo
		FinSi
		repe <- repe+1
		Repetir
			Escribir '¿Seguir ejecutando? (S/N) o (s/n)'
			Leer seguir
			Si ((seguir<>'S') Y (seguir<>'s') Y (seguir<>'N') Y (seguir<>'n')) Entonces
				Escribir 'Respuesta fuera de rango: (S/N) o (s/n)'
			FinSi
		Hasta Que ((seguir='S') O (seguir='s') O (seguir='N') O (seguir='n'))
	FinMientras
FinAlgoritmo
