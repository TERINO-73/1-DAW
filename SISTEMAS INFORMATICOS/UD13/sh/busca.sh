#!/bin/bash

p1=$1
read -rp "Escribe el contenido que deseas buscar" busc

enc=$(grep -rn "$busc" "$p1")

if [ -z enc ]; then

	echo no se ha encontrado nada mala suerte
else
	echo en esta parte esta lo encontrado = $enc

fi

