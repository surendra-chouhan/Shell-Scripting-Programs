#!/bin/bash

for (( i=0; i<50; i++ ))
do
	a=$((RANDOM%12 + 1))
	a[i]=$a
done

count=0
for key in ${!a[@]}
do
	if [ ${a[$key]} -eq 1 ]
	then
		January[((count++))]="Person"$key

	elif [ ${a[$key]} -eq 2 ]
	then
		February[((count++))]="Person"$key

	elif [ ${a[$key]} -eq 3 ]
	then
		March[((count++))]="Person"$key

	elif [ ${a[$key]} -eq 4 ]
	then
		April[((count++))]="Person"$key

	elif [ ${a[$key]} -eq 5 ]
	then
		May[((count++))]="Person"$key

	elif [ ${a[$key]} -eq 6 ]
	then
		June[((count++))]="Person"$key

	elif [ ${a[$key]} -eq 7 ]
	then
		July[((count++))]="Person"$key

	elif [ ${a[$key]} -eq 8 ]
	then
		August[((count++))]="Person"$key

	elif [ ${a[$key]} -eq 9 ]
	then
		September[((count++))]="Person"$key

	elif [ ${a[$key]} -eq 10 ]
	then
		October[((count++))]="Person"$key

	elif [ ${a[$key]} -eq 11 ]
	then
		November[((count++))]="Person"$key

	elif [ ${a[$key]} -eq 12 ]
	then
		December[((count++))]="Person"$key

	fi
done

declare -A birthMonth

birthMonth[01.January]=${January[@]}
birthMonth[02.February]=${February[@]}
birthMonth[03.March]=${March[@]}
birthMonth[04.April]=${April[@]}
birthMonth[05.May]=${May[@]}
birthMonth[06.June]=${June[@]}
birthMonth[07.July]=${July[@]}
birthMonth[08.August]=${August[@]}
birthMonth[09.September]=${September[@]}
birthMonth[10.October]=${October[@]}
birthMonth[11.November]=${November[@]}
birthMonth[12.December]=${December[@]}

echo "The Index Number of individuals having birthdays in the same month are : "
for k in ${!birthMonth[@]}
do
	echo $k " : " ${birthMonth[$k]}

done | sort -n -k1
