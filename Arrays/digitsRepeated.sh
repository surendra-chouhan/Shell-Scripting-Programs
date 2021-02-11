#!/bin/bash

for ((j=0; j<=100; j++))
do
	range[j]=$j
done
echo "The range is : " ${range[@]}

counter=0
for ((i=${range[0]}; i<${#range[@]}; i++))
do
	num=$i

	if [ $num -lt 10 ]
	then
		continue

	else
		s=0
        	rev=""
        	temp=$num

        	while [ $num -gt 0 ]
        	do
                	s=$(( $num%10 ))
                	num=$(( $num/10 ))
                	rev=$( echo ${rev}${s} )
        	done

        	if [ $temp -eq $rev ]
        	then
			array[counter++]=$temp
        	fi
	fi
done

echo "The digits that are repeated twice are : "${array[@]}
