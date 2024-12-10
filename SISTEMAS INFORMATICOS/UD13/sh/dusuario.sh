#!/bin/bash

read -p "Pon el nombre del directorio que desas mostrar en formato arbol: " dir

if [ ! -d "$dir" ]; then 
	echo "El directorio '$dir' no existe"
fi
ls -Rl "$dir" 

