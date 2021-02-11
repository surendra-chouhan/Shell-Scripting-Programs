#!/bin/bash -x

read -p "Enter 3 numbers : " a b c;

echo $a
echo $b
echo $c


Q1=$(($a + $b * $c))
echo $Q1

Q2=$(($a % $b + $c))
echo $Q2

Q3=$(($c + $a / $b))
echo $Q3

Q4=$(($a * $b + $c))
echo $Q4

#For Maximum Value

if [[ Q1 -gt Q2 && Q1 -gt Q3 && Q1 -gt Q4 ]]
then
	echo "$Q1 is maximum"
elif [[ Q2 -gt Q1 && Q2 -gt Q3 && Q2 -gt Q4 ]]
then
	echo "$Q2 is maximum"
elif [[ Q3 -gt Q1 && Q3 -gt Q2 && Q3 -gt Q4 ]]
then
	echo "$Q3 is maximum"
else 
	echo "$Q4 is maximum"
fi

#For Minimum value

if [[ Q1 -lt Q2 && Q1 -lt Q3 && Q1 -lt Q4 ]]
then
	echo "Q1 is minimum"
elif [[ Q2 -lt Q1 && Q2 -lt Q3 && Q2 -lt Q4 ]]
then
	echo "$Q2 is minimum"
elif [[ Q3 -lt Q1 && Q3 -lt Q2 && Q3 -lt Q4 ]]
then
	echo "$Q3 is minimum"
else
	echo "$Q4 is minimum"
fi 
