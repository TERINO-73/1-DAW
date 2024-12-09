#!/bin/bash

hora=$(date +%H)

if [ $hora -ge 8 -a $hora -lt 12 ]; then
	echo Buenos dias buen hombre
fi
if [ $hora -ge 12 -a $hora -lt 20 ]; then 
	echo Buenas tardes , la siestaaaa
fi
if [ $hora -ge 20 -a $hora -lt 24 ] && [ $hora -ge 0 -a $hora -lt 8 ] ; then
	echo Buenas noches , a dormir
fi
