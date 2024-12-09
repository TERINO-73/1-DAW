Algoritmo MásEjercicios_5
Definir numv,i,j,n,p como entero 
	Escribir"Escriba hasta que numero quiere que llegue la piramide"
	leer numv
	n=1
	p=1
	
	Para i=1 Hasta numv Con Paso 1 Hacer
		Escribir " "
		
		Mientras numv*2>p
			Escribir " " Sin Saltar
			p=p+1
		FinMientras
		p=1
		Para  j=1 Hasta n Con Paso 1 Hacer
			
			escribir " *" sin saltar
		Fin Para
		

		n=n+2
		numv=numv-1
		
	Fin Para
	Escribir " "
FinAlgoritmo
