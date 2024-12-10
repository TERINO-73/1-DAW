Algoritmo Av_3
	Definir i,n,p Como Entero
	Escribir "Escribe un número para ver si es primo o no"
	Leer n
	i=n
	p=0
	Repetir  
		i=i-1
		Si n%i=0 Entonces
			i=2
			p=1
		FinSi
	Mientras Que i<=raiz(n)
	Si p=0 o n=2 Entonces
		Escribir "El ",n," es primo"
	SiNo
		Escribir "No es primo"
	FinSi
	
FinAlgoritmo
