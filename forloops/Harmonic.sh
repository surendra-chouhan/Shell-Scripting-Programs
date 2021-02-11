#!/bin/bash

read -p "Enter a upto which you want to calculate harmonic numbers : " a

harmonic=0;

for (( i=1 ; i<=a ; i++ ))
do
	harmonic+=" + "`expr 1/$i `
done
echo $harmonic
