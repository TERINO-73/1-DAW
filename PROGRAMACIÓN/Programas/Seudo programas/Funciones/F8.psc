Funcion MCD(i,n1,n2,n3,m) 
	
	
	si n1<>n2 y n1<>n3 y n3<>n2 Entonces
		Si m=1 Entonces
			i=n1+1
			Repetir
				i=i-1
			Hasta Que n1%i=0 y n2%i=0 y n3%i=0
			Escribir i," Es el maximo común divisor entre ",n1," y ",n2," ",n3,""
			
			
			
			Si m=2 Entonces
				i=n2
				Repetir
					i=i-1
				Hasta Que n1%i=0 y n2%i=0 y n3%i=0
				Escribir i," Es el maximo común divisor entre ",n1," y ",n2," y ",n3," "
			FinSi
		SiNo
			Si m=3 Entonces
				i=n3
				Repetir
					i=i-1
				Hasta Que n1%i=0 y n2%i=0 y n3%i=0
				Escribir i," Es el maximo común divisor entre ",n1," y ",n2," y ",n3," "
			FinSi
			
		FinSi
	Sino	
		Escribir n1," Es el maximo común divisor entre ",n1," y ",n2," y ",n3,""
	Finsi
	
	
Fin Funcion
Algoritmo F8
	Definir i,n1,n2,n3,m Como Entero
	Escribir "Escribe el primer numero del máximo común divisor"
	Leer n1
	Escribir "Escribe el segundo numero"
	Leer n2
	Escribir "Escribe el tercer numero"
	leer n3
	m=0
	i=0
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
	
	MCD(i,n1,n2,n3,m) 
FinAlgoritmo
