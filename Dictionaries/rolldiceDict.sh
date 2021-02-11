#!/bin/bash

declare -A result
i=0
one=0
two=0
three=0
four=0
five=0
six=0

while [[ $one -lt 10 && $two -lt 10 && $three -lt 10 && $four -lt 10 && $five -lt 10 && six -lt 10 ]]
do
	a=$((RANDOM%6 + 1))
	result[$((i++))]=$a

	case $a in
	1)
		one=$(($one + 1))
		;;
	2)
		two=$(($two + 1))
		;;
	3)
		three=$(($three + 1))
		;;
	4)
		four=$(($four + 1))
		;;
	5)
		five=$(($five + 1))
		;;
	6)
		six=$(($six + 1))
		;;
	esac

done

echo "The result each time a die is rolled is : " ${result[@]}
echo "The total number of times the die is rolled is : " ${#result[@]}


declare -A appearance
appearance[1]=$one
appearance[2]=$two
appearance[3]=$three
appearance[4]=$four
appearance[5]=$five
appearance[6]=$six

echo "The number of times each value has occured is : "
for key in ${!appearance[@]}
do
	echo ${key} ${appearance[${key}]}

done

biggest=${appearance[1]}
smallest=${appearance[1]}

for j in ${appearance[@]}
do
	if [[ $j -gt $biggest ]]
	then
		biggest=$j
	fi

	if [[ $j -lt $smallest ]]
	then
		smallest=$j
	fi
done

echo "The value that appeared maximum time is : "
for k in ${!appearance[@]}
do
	if [ ${appearance[$k]} -eq $biggest ]
	then
		echo $k
	fi
done

echo "The value that appeared minimum time is : "
for k in ${!appearance[@]}
do
	if [ ${appearance[$k]} -eq $smallest ]
	then
		echo $k
	fi
done

