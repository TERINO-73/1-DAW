Algoritmo Av_4
	Definir i,n,p,v,nc Como Entero
	Escribir "Escribe un número de primos que quieres que te muestre"
	Leer n
	i=0
	p=0
	nc=1
	v=0
		Repetir
			nc=nc+1
			i=nc
			Repetir
				i=i-1
				Si nc%i=0 y (nc<>2 o nc<>1) Entonces
					i=2
					p=1
				FinSi
			Mientras Que i<>2
			Si v=0 Entonces
				Escribir "1"
				v=1
			Si v=1 y n>1 Entonces
				Escribir "2"
				v=2
			FinSi
			FinSi
			Si p=0 Entonces
				Escribir "",nc,""
				v=v+1
			FinSi
			p=0
		Hasta Que v=n
		
	
FinAlgoritmo
