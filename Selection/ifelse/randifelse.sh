#!/bin/bash

i=0
j=0
k=0
while [ $i -lt 5 ]
do

        x=${RANDOM:0:3}

	if [[ $j -gt $x ]]
	then
		#echo "$j is greater"
		maximum=$j
	else
		j=$((0+$x))
	fi


	if [[ $k -eq 0 ]]
        then
                k=$x
        fi

        if [[ $x -lt $k ]]
        then
                k=$((0+$x))
        else
                #echo "$k is Smaller"
		minimum=$k
        fi



	i=`expr $i + 1`

done

echo "Maximum : $j"
echo "Minimum : $k"
