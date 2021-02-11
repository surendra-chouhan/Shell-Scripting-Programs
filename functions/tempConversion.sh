#!/bin/bash
degF=0
degC=0

function TempConversion(){
	local a=$1

	case $a in
		0)
			read -p "Enter a number to convert to Fahrenheit.The number should be between 0C and 100C : " degC
			#degF=$(($(($degC*9/5))+32))
			#echo $degF
			echo - | awk '{printf "%.2f\n",'$(($degC*9/5))+32'}'
			;;

		1)
			read -p "Enter a number to convert to Celsius. The number should be between 32F and 212F : " degF
			#degC=$(( $(( $degF-32 )) * 5/9 ))
			#echo $degC
			echo - | awk '{printf "%.2f\n",'$(($degF-32))*5/9'}'
			;;
	esac
}
read -p "Enter 0 to convert Celsius to Fahrenheit or 1 to Fahrenheit to Celsius : " a;

tempafterconversion=$(TempConversion $a)
echo $tempafterconversion
