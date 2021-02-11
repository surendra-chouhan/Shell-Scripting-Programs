#!/bin/bash

read -p "Enter a number to check if it is a prime number or not : " a;

flag=0;

for (( i=2; $i<=$(($a/2)); i++ ))
do
        if [[ $a%$i -eq 0 ]]
        then
                flag=1;
        fi
done

if [ $flag -eq 1 ]
then
        echo "It is not a prime number";
else
        echo "It is a prime number";
fi
