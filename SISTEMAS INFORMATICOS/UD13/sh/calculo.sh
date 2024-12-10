#!/bin/bash

read -p "Pon el primer numero para el calculo: " n1
read -p "Pon el segundo numero para el calculo: " n2

suma=$(($n1+$n2))
echo la suma de $n1 y $n2 da como resultado $suma

resta=$(($n2 - $n1))
echo la resta de $n2 menos $n1 da como resultado $resta

multi=$(($n1 * $n2))
echo la mutiplicacion de $n1 por $n2 da como resultado $multi

division=$(($n1 / $n2))
echo la multiplicacion de $n1 entre $n2 da como resultado $division
