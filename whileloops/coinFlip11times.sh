#!/bin/bash

Heads=0
Tails=0
limit=11

while [[ $Heads != $limit && $Tails != $limit ]]
do

	a=$((RANDOM%2))
	echo $a

	if [[ $a -eq 0 ]]
	then
	        echo "Heads"
		Heads=$(($Heads+1))
	else
	        echo "Tails"
		Tails=$(($Tails+1))
	fi
done
