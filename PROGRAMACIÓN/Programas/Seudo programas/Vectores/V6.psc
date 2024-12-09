Funcion Rellenar(v,tam)
	Definir i,b como entero
	b=0
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		Repetir
			b=b+1
			si b%2<>0 Entonces
				
				v[i]=b
				escribir v[i] " " Sin Saltar
			FinSi
		Mientras Que b%2=0
		
		
	Fin Para
FinFuncion

Funcion MostrarAlreves(v,tam)
	Definir i,b como entero
	i=9
	Para i=9 Hasta 0 Con Paso -1 Hacer
		
				escribir v[i] " " Sin Saltar
			
		
	FinPara
	
FinFuncion

Algoritmo V6
	Definir v Como Entero
	Dimension v[10]
	Definir d como entero
	d=0
	
	
	Rellenar(v,10)
	Escribir " "
	MostrarALreves(v,10)
FinAlgoritmo
