#!/bin/bash
temp=0

for (( i=0; i<10; i++ ))
do
	rand_num[i]=${RANDOM:0:3}
done

echo ${rand_num[@]}

for (( i=0; i<${#rand_num[@]}; i++ ))
do
	for (( j=$(($i+1)); j<${#rand_num[@]}; j++  ))
	do
		if [[ ${rand_num[i]} -gt ${rand_num[j]} ]]
		then
			temp=${rand_num[i]};
			rand_num[i]=${rand_num[j]};
			rand_num[j]=$temp;
		fi
	done
done

echo "Second Largest is : " ${rand_num[$((${#rand_num[@]} - 2))]}
echo "Second Smallest is : " ${rand_num[1]}
