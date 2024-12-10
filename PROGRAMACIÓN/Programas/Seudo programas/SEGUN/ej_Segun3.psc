Algoritmo ej_Segun3
	Definir num1,num2 Como Entero
	definir c1,c2 como cadena
	Escribir "Que numero te ha tocado en la primera tirada(pongalo en texto)"
	Leer c1
	Num1=0
	Num2=0
	
	Segun (c1) Hacer
		"UNO":
			num1=1
		"DOS":
			num1=2
		"TRES":
			num1=3
		"CUATRO":
			num1=4
		"CINCO":
			num1=5
		"SEIS":
			num1=6
			
		De Otro Modo:
			Escribir "Número no valido"
	Fin Segun
	
	Escribir "Que numero te ha tocado en la segunda tirada(pongalo en texto)"
	Leer c2
	
	
	Segun (c2) Hacer
		"UNO":
			num2=1
		"DOS":
			num2=2
		"TRES":
			num2=3
		"CUATRO":
			num2=4
		"CINCO":
			num2=5
		"SEIS":
			num2=6
			
		De Otro Modo:
			Escribir "Número no valido"
	Fin Segun
	
	Escribir "En la primera tirada te ha tocado un ",num1," y en la segunda un ",num2," por lo tanto en total tienes un ",num1+num2,""
	
	
FinAlgoritmo
