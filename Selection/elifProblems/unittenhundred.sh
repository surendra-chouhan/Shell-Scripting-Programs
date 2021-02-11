#!/bin/bash -x

read -p "Enter a Number : " a;

if [[ $a -ge 0 && $a -lt 10 ]]
then
        echo "Units"
elif [[ $a -ge 10 && $a -lt 100 ]]
then
        echo "Tens"
elif [[ $a -ge 100 && $a -lt 1000 ]]
then
        echo "Hundred"
elif [[ $a -ge 1000 && $a -lt 10000 ]]
then
        echo "Thousands"
elif [[ $a -ge 10000 && $a -lt 100000 ]]
then
        echo "Ten Thousands"
else
        echo "Wrong input"
fi
