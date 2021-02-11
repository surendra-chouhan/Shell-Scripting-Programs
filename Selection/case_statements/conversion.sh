#!/bin/bash

read -p "Enter the number to convert: " a;

read -p "Enter 1 to convert feet to inch , 2 to feet to meter , 3 to inch to feet , 4 Meter to feet " b;

meterconversion=3
inchconversion=12

case $b in
        1)
                echo - | awk '{printf "Feet to inch conversion value is: %.2f\n", '$a*$inchconversion'}'
                ;;
        2)
                echo -| awk '{printf "Feet to meter conversion value is: %.2f\n", '$a/$meterconversion'}'
                ;;
        3)
                echo - | awk '{printf "Inch to feet conversion is : %.2f\n", '$a/$inchconversion'}'
                ;;
        4)
                echo - | awk '{printf "Meter to feet conversion value is: %.2f\n", '$a*$meterconversion'}'
                ;;
        *)
                echo "Wrong input"
                ;;
esac
