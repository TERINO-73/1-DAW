Algoritmo Av_1
	Definir i,n,n1,n2 Como Entero
	Escribir "Escribe el primer numero del máximo común divisor"
	Leer n1
	Escribir "Escribe el segundo numero"
	Leer n2
	si n1<>n2 Entonces
		Si n1>n2 Entonces
			i=n1+1
			Repetir
				i=i-1
			Hasta Que n1%i=0 y n2%i=0
			Escribir i," Es el maximo común divisor entre ",n1," y ",n2," "
		SiNo
			Si n2>n1 Entonces
			  i=n2
			Repetir
				i=i-1
			Hasta Que n1%i=0 y n2%i=0
			Escribir i," Es el maximo común divisor entre ",n1," y ",n2," "
			FinSi
		FinSi
	Sino	
		Escribir n1," Es el maximo común divisor entre ",n1," y ",n2," "
	Finsi
	
	
	
FinAlgoritmo
