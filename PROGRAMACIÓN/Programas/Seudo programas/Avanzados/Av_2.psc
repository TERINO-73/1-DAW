Algoritmo Av_2
	Definir i,n,n1,n2 Como Entero
	Escribir "Escribe el primer numero del mínimo común múltiplo"
	Leer n1
	Escribir "Escribe el segundo numero"
	Leer n2
		Si n1>=n2 Entonces
			i=1
			Repetir
				i=i+1
			Hasta Que n1%i=0 y n2%i=0
			Escribir i," Es el mínimo común múltiplo entre ",n1," y ",n2," "
		SiNo
			Si n2>n1 Entonces
			  i=1
			Repetir
				i=i+1
			Hasta Que n1%i=0 y n2%i=0
			Escribir i," Es el  mínimo común múltiplo entre ",n1," y ",n2," "
			FinSi
		FinSi
	
	
	
	
FinAlgoritmo
