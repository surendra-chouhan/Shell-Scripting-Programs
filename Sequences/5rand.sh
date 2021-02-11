#!/bin/bash -x

i=0
sum=0
while [ $i -lt 5 ]
do

	x=${RANDOM:0:2}
	sum=$(($sum + $x))
	i=`expr $i + 1`
done
echo "Sum is : " $sum
echo "Average is : " $(($sum/5))

