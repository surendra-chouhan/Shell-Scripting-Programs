#!/bin/bash

read -p "Enter any number : " a;
p=1
q=2

for (( i=1; i<=$a; i++ ))
do
        p=$(($p*$q));
        echo $p
done
