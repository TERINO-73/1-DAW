Algoritmo Av_6
	Definir n,i,diez,nd,ne,nc,ns como entero
	
	Escribir "Inoduzca un numero y yo le dire el numero de cifras que tiene "
	n=1
	i=1
	diez=10
	
	
	Leer n
	ns=n*n
	
	Mientras ns>=diez
		
		i=i+1
		diez=diez*10 
	FinMientras
	
	Si i%2==0 Entonces
		
		i=i/2
		diez=10^i
		ne=trunc(ns/diez)
		nd=ns%diez
		nc=ne+nd
		
		Si nc=n Entonces
			Escribir "Es un numero de krapekar"
		SiNo
			Escribir "No es un numero de Krapekar"
		FinSi
	SiNo
		i=redon(i/2)
		diez=10^i
		ne=trunc(ns/diez)
		nd=ns%diez
		nc=ne+nd
		Si nc=n Entonces
			Escribir "Es un numero de krapekar"
		SiNo
			Escribir "No es un numero de Krapekar"
		FinSi
	FinSi
FinAlgoritmo

