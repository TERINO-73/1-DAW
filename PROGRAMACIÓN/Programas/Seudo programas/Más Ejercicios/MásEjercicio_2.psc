Algoritmo MásEjercicio_2
	Definir sum,n,i,rest,diez,coc como entero
	
	Escribir "Inoduzca un numero y yo le dire la suma de sus cifras"
	Leer n
	diez=1
	sum=0
	i=-1
	coc=0
	
	Mientras n>=diez
		i=i+1
		diez=diez*10
	FinMientras
	
	diez=10^i

	Si n<10
		Entonces
		Escribir "La suma de sus cifras  es: ",n
	SiNo
		rest=n%10
		Repetir
			coc=trunc(n/diez)
			n=n%diez
			sum=coc+sum
			diez=diez/10
			i=i-1
			
		Hasta Que i=0
	Finsi
	
	Escribir sum+rest
	
FinAlgoritmo
