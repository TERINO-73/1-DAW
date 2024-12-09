#!/bin/bash

suma=$(echo "scale=2;$1 + $2" | bc -l)
echo la suma de $1 y $2 da como resultado $suma

resta=$(echo "scale=2;$2 - $1" | bc -l)
echo la resta de $2 menos $1 da como resultado $resta

multi=$(echo "scale=2;$1 * $2" | bc -l)
echo la mutiplicacion de $1 por $2 da como resultado $multi

division=$(echo "scale=2;$1 / $2" | bc -l)
echo la multiplicacion de $1 entre $2 da como resultado $division
