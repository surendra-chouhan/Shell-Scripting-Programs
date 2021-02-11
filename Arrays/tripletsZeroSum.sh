#!/bin/bash
echo "Enter 5 integer numbers between -10 and 10 : "
read -a arr

echo "The entered array is : "
echo ${arr[@]}

n=$(( ${#arr[@]}/${#arr[0]} ))
#echo $n


found=0

echo "The three numbers whose sum gives ZERO is : "

for (( i=0; i<$n-2; i++ ))
do
	for (( j=$i+1; j<$n-1; j++ ))
	do
		for (( k=$j+1; k<$n; k++ ))
		do
			z=$((${arr[i]} + ${arr[j]} + ${arr[k]}))
			if [[ $z -eq 0 ]]
			then
				echo ${arr[i]} " " ${arr[j]} " " ${arr[k]}
				found=1;
			fi
		done
	done
done


if [[ found -eq 0 ]]
then
	echo "Do not Exist"
fi
