#!/bin/bash -x

a=$((RANDOM%2))
echo $a

if [[ $a -eq 0 ]]
then
	echo "Heads"
else
	echo "Tails"
fi

