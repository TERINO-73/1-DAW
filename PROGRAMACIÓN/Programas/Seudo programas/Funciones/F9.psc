Funcion MCM(i,n1,n2,n3,m) 
	
	
	Si m=1 Entonces
	Finsi
	mc = n1
	Si m=2
		mc = n2
	Fin Si
	Si m=3 Entonces
		mc=n3
	FinSi
	Mientras (mc % n1 <> 0 O mc % n2 <> 0 O mc % n3 <> 0) Hacer
		mc = mc + 1
	Fin Mientras
	Escribir "El mínimo común multiplo es ", mc
	
	
	
Fin Funcion
Algoritmo F9
	Definir i,n,n1,n2,n3,m,mc Como Entero
	Escribir "Escribe el primer numero del mínimo común múltiplo"
	Leer n1
	Escribir "Escribe el segundo numero"
	Leer n2
	Escribir "Escribe el tercer numero"
	Leer n3
	
	
	Si(n1 > n2) Entonces
        Si(n1 > n3) Entonces 
            m=1
        Sino
            m=3
        FinSi
    Sino
        Si(n2 > n3) Entonces 
            Si(c1 > c3) Entonces 
                m=2
            FinSi
        Sino
            m=3
        FinSi
    FinSi
	
	Si m=1 Entonces
	Finsi
		mc = n1
	Si m=2
		mc = n2
	Fin Si
	Si m=3 Entonces
		mc=n3
	FinSi
	Mientras (mc MOD n1 <> 0 O mc MOD n2 <> 0) Hacer
		mc = mc + 1
	Fin Mientras
	Escribir "El mínimo común multiplo es ", mc
FinAlgoritmo

	

