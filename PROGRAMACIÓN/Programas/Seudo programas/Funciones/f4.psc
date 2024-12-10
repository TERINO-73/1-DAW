Funcion Modulo(n2,n1,i)
	Si n2>=n1 Entonces
		Escribir n1," " Sin saltar
		Mientras n1<n2
			n1=n1+1
			Escribir ,n1," " Sin saltar
		
		Fin Mientras
	SiNo
		Escribir n2," " Sin saltar
		Mientras n2<n1
			n2=n2+1
			Escribir ,n2," "  Sin saltar
			
		Fin Mientras
	Fin Si
FinFuncion

Algoritmo f4
	Definir n2,n1,i Como Entero
	Escribir "Escribe 2 numeros y te digo todos los numeros entre ellos ,ambos inclusive"
	Leer n2
	leer n1
	i=0

		Modulo(n2,n1,i)
FinAlgoritmo
