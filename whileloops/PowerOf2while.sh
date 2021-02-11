#!/bin/bash
read -p "Enter any number : " num;
p=1
q=2
limit=256
i=0

while [[ $i -lt $num && $p -lt $limit ]]
do

	p=$(($p*$q));
	echo $p

	i=`expr $i+1`

done
