#!/bin/bash -x

x=$((RANDOM%6+1))
y=$((RANDOM%6+1))

echo "Addition of two Random Dice Number is : " $(($x + $y));
