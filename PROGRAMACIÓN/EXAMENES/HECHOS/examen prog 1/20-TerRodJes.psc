Funcion Rellenarvector ( v,tam)
	Definir i Como Entero
	i=0
	Mientras i<tam
		
		v[i] = Aleatorio(10,100) 
		i=i+1
		
	Fin Mientras
	
	
	
FinFuncion

Funcion Mostrarvector ( v, tam)
	Definir i Como Entero
	
	Escribir "Contenido del vector: "Sin Saltar
	Escribir "(" Sin Saltar
	i=0
	Repetir
		si i=tam-1 Entonces
			Escribir v[i] Sin Saltar 	
		SiNo
			Escribir v[i], "-" Sin Saltar
		FinSi
		i=i+1
	Mientras que i<tam
	
	Escribir ")" Sin Saltar
FinFuncion

Funcion ordenarvector (v Por Referencia, tam)
	Definir i, j, aux Como Entero;
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
	
			
		Para j = tam - 1 Hasta i + 1 Con Paso -1 Hacer
			Si (v[j] < v[j - 1]) Entonces
				aux = v[j]
				v[j] = v[j - 1]
				v[j - 1] = aux
			Fin Si
		Fin Para
	
	Fin Para
FinFuncion

Funcion verrepes(v,tam)
	Definir i,j,p Como Entero
	p=1
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		
		Para j=i+1 Hasta tam-1 Con Paso 1 Hacer
			Si v[i]=v[j] Entonces
				Escribir "El vector tiene vectores repetidos: " Sin Saltar
				i=tam-1
				j=tam-1
				p=0
			FinSi
		FinPara
		
	FinPara
	si p=1 Entonces
		Escribir "El vector no tiene vectores repetidos: " Sin Saltar
	FinSi
	
FinFuncion

Funcion calcularmedias(v,tam)
	definir ni,np,mi,mp,i Como Real
	
	ni=0
	np=0
	mi=0
	mp=0
	
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		Si v[i]%2<>0 Entonces
			ni=ni+1
			mi=mi+v[i]
		SiNo
			np=np+1
			mp=mp+v[i]
			
		FinSi
		
		
	FinPara
	si np<>0 Entonces
		mp=mp/np
		mp=redon(mp)
		mp=mp/10
		mp=redon(mp)
		mp=mp*10
		
		
		Escribir "Nº de valores pares: ",np," -Media de los valores pares: ",redon(mp),""
	SiNo
		Escribir "Nº de valores pares: ",np," -No se puede calcular la media "
	FinSi
	
	si ni<>0 Entonces
		mi=mi/ni
		mi=redon(mi)
		mi=mi/10
		mi=redon(mi)
		mi=mi*10
		Escribir "Nº de valores pares: ",ni," -Media de los valores pares: ",redon(mi),""
	SiNo
		Escribir "Nº de valores pares: ",ni," -No se puede calcular la media "
	FinSi
FinFuncion
Algoritmo TOCHO
	
	
	Definir v,vop,opciones,j,va Como Entero
	Dimension v[10],vop[6],va[4]
	
	Para j=0 Hasta 5 Con Paso 1 Hacer
		vop[j]=0
	FinPara
	
	Repetir
		
		Escribir "1.-Rellenar vector"
		Escribir "2.-Mostras vector"
		Escribir "3.-Calcular medias"
		Escribir "4.-Almacenar extremos"
		Escribir "5.-Valores repetidos"
		Escribir "6.-Ordenar vector"
		Escribir "Elige una de las siguientes opciones:" Sin Saltar
		Leer opciones
		si opciones = 1 Entonces
			vop[0]= vop[0]+1
			Escribir "Se ha generado el siguiente vector: "
			Rellenarvector(v,10)
			
			Mostrarvector(v, 10)
		FinSi
		
		si opciones = 2 Entonces
			vop[1]= vop[1]+1
			Mostrarvector(v, 10)
		FinSi
		
		si opciones = 3 Entonces
			vop[2]= vop[2]+1
			calcularmedias(v,10)
		FinSi
		
		si opciones = 4 Entonces
			vop[3]= vop[3]+1
			ordenarvector(v,10)
			va[0]=v[0]
			va[1]=v[1]
			va[2]=v[8]
			va[3]=v[9]
			Mostrarvector(va,4)
			
		FinSi
		
		si opciones = 5 Entonces
			vop[4]= vop[4]+1
			verrepes(v,10)
			Mostrarvector(v,10)
			
		FinSi
		
		si opciones = 6 Entonces
			vop[5]= vop[5]+1
			ordenarvector(v ,10)
			Escribir "Vector ordenado: "
			Mostrarvector(v,10)
			
		FinSi
		Esperar Tecla
		Limpiar Pantalla
	Hasta Que opciones=0
	
	Para j=0 Hasta 5 Hacer
		Escribir "opcion ",j+1,": ",vop[j]," veces"
	FinPara
	
	
	
	
	
	
FinAlgoritmo
