#!/bin/bash

read -p "Dime el nombre del fichero: " nfich
read -p "Dime lo que debe incluir dentro este: " df
if [ -a $nfich ]; then
	if [ -z $df ]; then 
		df="Vacio"
		
	fi
	if [ -z $nfich ] && [ df -eq "Vacio" ]; then 
		nfich="Fichero_Vacio"
		df="  "
	fi 

	echo "$df" > "$nfich"
fi
