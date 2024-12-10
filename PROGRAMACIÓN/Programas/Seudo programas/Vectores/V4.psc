Funcion S<-ContarSuspensos(v,d,tam)
	Definir i,S como entero
	S=0
	d=5
	Para i=0 Hasta tam-1 con paso 1 Hacer
		si  v[i]>=d Entonces
			S=S+1
		FinSi
	FinPara
FinFuncion
Funcion A<-ContarAprobados(v,d,tam)
	Definir i,A como entero
	A=0
	d=5
	Para i=0 Hasta tam-1 con paso 1 Hacer
		si  v[i]<d Entonces
			A=A+1
		FinSi
	FinPara
FinFuncion

Funcion Rellenar(v,tam)
	Definir i como entero
	Para i=0 Hasta tam-1 Con Paso 1 Hacer
		v[i]=Aleatorio(0,10)
	Fin Para
FinFuncion

Algoritmo V4
	Definir v Como Entero
	Dimension v[100]
	Definir d como entero
	d=0
	
	
	Rellenar(v,100)

		Escribir "Hay ", ContarAprobados(v,d,100)," aprobados"
		Escribir "Hay ", ContarSuspensos(v,d,100)," suspensos"
	
	
FinAlgoritmo
