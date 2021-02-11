#!/bin/bash

echo "Think of a number between 1 to 100"
min=1
max=100
num=0
flag=0

while [[ flag -eq 0 ]]
do
	num=$(($(($min+$max))/2))
	echo "Is your number greater or lesser than $num"
	read -p "If greater then enter 0 or if smaller then enter 1 or if is equal than enter any other number : " con

	if [[ $con -eq 0 ]]
	then
		min=$num
		max=$max

	elif [[ $con -eq 1 ]]
	then
		min=$min
		max=$num

	else
		flag=$(($flag+1))
		echo "The number is : " $num
	fi

done
