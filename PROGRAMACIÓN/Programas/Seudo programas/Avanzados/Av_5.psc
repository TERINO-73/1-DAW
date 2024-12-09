Algoritmo Av_5
	Definir n como entero
	Escribir "Escriba un numero para haceer el algoritmo de collatz"
	Leer n
	Repetir
		Si n%2==0 Entonces
			n=n/2
		Sino 
			n=n*3+1
		FinSi
		Escribir n
	Mientras Que n<>1
	
FinAlgoritmo
