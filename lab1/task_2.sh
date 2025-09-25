#!/bin/bash

while true; 
do
	read -r line
	if [[ "$line" == "q" ]]
	then
		break
	fi
 	[[ $line =~ ^[a-zA-Z]*$ ]] && echo "length = ${#line}, stringHasOnlyAlp = true" || echo "length = ${#line}, stringHasOnlyAlp = false"	
	echo ""
done
