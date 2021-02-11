#!/bin/bash

read -p "Enter a number to check its factorial : " num;

fact=1;

for (( i=2; i<=$num; i++ ))
do
        fact=$(($fact*$i));
done
echo $fact
