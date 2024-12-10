Funcion primos=primo(i,num,esprimo,primos ) 
	Mientras (i < num y esPrimo == 1) Hacer
		Si (num % i == 0) Entonces
			esPrimo = 0
		Fin Si
		i = i + 1
	Fin Mientras
	
	Si (esPrimo == 1) Entonces
		primos=Verdadero
	SiNo
		primos=Falso
	Fin Si

Fin Funcion
Algoritmo f5
	Definir  num, i, esPrimo como Entero
	Definir primos Como Logico
	esPrimo = 1
	Escribir "Introduzca un número"
	Leer num
	i = 2
	primos=falso
	primos=primo(i,num,esprimo,primos )
	Si primos=Verdadero Entonces
		Escribir "es primo"
	Sino 
		Escribir "no es primo"
	FinSi
FinAlgoritmo


