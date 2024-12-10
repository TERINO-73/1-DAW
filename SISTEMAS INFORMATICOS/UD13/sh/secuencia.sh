#!/bin/bash -x


read -p "Dime el primer numero: " n1
read -p "Dime el segundo numero: " n2

if [ $n1 -gt $n2 ]; then 
	
	temp=$n1

else

	temp=$n1
	n1=$n2
	n2=$temp
fi

for num in {$n1..$n2}; do
	echo "$num"
done
