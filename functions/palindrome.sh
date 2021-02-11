#!/bin/bash

function PalindromeCheck() {
	local num=$1
	s=0
	rev=""
	temp=$num

	while [ $num -gt 0 ]
	do
		s=$(( $num%10 ))
		num=$(( $num/10 ))
		rev=$( echo ${rev}${s} )
	done

	if [ $temp -eq $rev ]
	then
		echo "Number $temp is Palindrome"
	else
		echo "Number $temp is not Palindrome"
	fi
}

read -p "Enter a Number : " num;
read -p "Enter second number : " num2;

num1pal=$( PalindromeCheck $num )
echo $num1pal

num2pal=$( PalindromeCheck $num2 )
echo $num2pal
