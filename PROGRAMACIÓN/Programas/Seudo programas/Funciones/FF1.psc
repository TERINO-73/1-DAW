Funcion perfectos=perfecto(n,i,perfectos)
	Repetir
		n=n-1
		Si i%n=0 Entonces
			perfectos=perfectos+n
			
		FinSi
		
		Si perfectos = i Entonces
			Escribir "Su numero es perfecto"
		FinSi
		
	Hasta Que n=1
FinFuncion

Algoritmo FF1
	Definir n ,i,perfectos Como Entero
	Escribir "Escriba un numero y le dire  si es perfecto"
	Leer n
	i=n
	perfectos =0
	
	perfectos=perfecto(n,i,perfectos)
	
FinAlgoritmo
