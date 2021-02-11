#!/bin/bash

n=1
count=0

for ((i=0; i<10; i++))
do
	a=${RANDOM:0:3}
	random[((count++))]=$a
done
echo ${random[@]}

if [ "${#random[@]}" -lt 2 ]
then
	echo "Incoming array is not large enough "&2
	exit 1
fi

largest=${random[0]}
smallest=${random[0]}
secondGreatest='unset'
secondsmallest='unset'

for((i=1; i < ${#random[@]}; i++))
do
	if [[ ${random[i]} > $largest ]]
   then
   	secondGreatest=$largest
      largest=${random[i]}
	elif (( ${random[i]} != $largest )) && { [[ "$secondGreatest" = "unset" ]] || [[ ${random[i]} > $secondGreatest ]]; }
   then
   	secondGreatest=${random[i]}
   fi

   if [[ ${random[i]} < $smallest ]]
   then
   	secondsmallest=$smallest
		smallest=${random[i]}
	elif  (( ${random[i]} != $largest )) && { [[ "$secondsmallest" = "unset" ]] || [[ ${random[i]} < $secondsmallest ]]; }
	then
		secondsmallest=${random[i]}
	fi
done

echo "secondGreatest = $secondGreatest"
echo "secondsmallest = $secondsmallest"
