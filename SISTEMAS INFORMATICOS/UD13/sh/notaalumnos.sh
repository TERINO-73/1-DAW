#!/bin/bash

read -p "Indique el numero de alumnos de su clase: " nal
nap=0
cont=$nal
while [ $cont -gt 0 ];do

	cont=$(($cont-1))
	read -p "Dime la nota del alumno: " nota
	notat=$(($notat+$nota))
	if [ $nota -gt 5 ]; then
		
		nap=$(($nap+1))
	fi


done

echo "El numero de alumnos aprobados es de : $nap"
media=$(echo "scale=2;$notat / $nal" | bc -l)
echo "La media de los alumnos es de : $media "
