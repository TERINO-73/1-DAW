Funcion primos=primo(i,num,esprimo,primos,n) 
	
	
	Mientras (i < num y esPrimo == 1) Hacer
		Si (num % i == 0) Entonces
			esPrimo = 0
		Fin Si
		i = i + 1
	Fin Mientras
	
	Si (esPrimo == 1) y(n%num=0) Entonces
		 primos=verdadero
	SiNo
		 primos=Falso
	Fin Si


Fin Funcion
Algoritmo f7
	Definir  num, i, esPrimo,n como Entero
	Definir primos Como Logico
	esPrimo = 1
	Escribir "Introduzca un número"
	Leer num
	n=num
	i = 2
	primos=Falso
	
	Repetir
		
		primos=primo(i,num,esprimo,primos,n) 
		Si primos=verdadero Entonces
			Escribir num 
		FinSi
		
		num=num-1
	Hasta Que num=1
	
	

	
	
	
FinAlgoritmo



