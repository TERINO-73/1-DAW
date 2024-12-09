#!/bin/bash

read -p "Pon el primer numero para el calculo: " n1
read -p "Pon el segundo numero para el calculo: " n2

suma=$(echo "scale=2;$n1 + $n2" | bc -l)
echo la suma de $n1 y $n2 da como resultado $suma

resta=$(echo "scale=2;$n2 - $n1" | bc -l)
echo la resta de $n2 menos $n1 da como resultado $resta

multi=$(echo "scale=2;$n1 * $n2" | bc -l)
echo la mutiplicacion de $n1 por $n2 da como resultado $multi

division=$(echo "scale=2;$n1 / $n2" | bc -l)
echo la multiplicacion de $n1 entre $n2 da como resultado $division
