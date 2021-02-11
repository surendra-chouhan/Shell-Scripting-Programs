#!/bin/bash -x

startFrom=100
placeBet=1
Won=0
Lost=0

while [[ $startFrom -gt 0 && $startFrom -lt 200 ]]
do
	bet=$((RANDOM%2))

	if [[ $bet -eq 0 ]]
	then
		startFrom=$(($startFrom+1))
		echo "Won"
		Won=$(($Won+1))
	else
		startFrom=$(($startFrom-1))
		echo "Lost"
		Lost=$(($Lost+1))
	fi

	echo "Number of time the bets have been made is : `expr $(($Won+$Lost))`"
	echo "Number of times the bet is won is : "$Won
	echo "Number of times the bet is lost is : "$Lost
done
