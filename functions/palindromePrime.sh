#!/bin/bash

function Prime() {
	local a=$1
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
        	echo "not a prime number";
	else
        	echo "prime number";
	fi
}

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

	echo $rev
}

read -p "Enter a number : " num;
num_prime=$( Prime $num )
echo "$num is a" $num_prime

num_palindrome=$( PalindromeCheck $num )
echo "The palindrome of $num is :" $num_palindrome

palindrome_prime=$( Prime $num_palindrome )
echo "The Palindrome number of $num which is $num_palindrome is also " $palindrome_prime
