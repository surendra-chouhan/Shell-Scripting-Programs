#!/bin/bash -x

onefeet=12;

#feet=$((42/$onefeet));
#echo $feet
echo - | awk '{printf "%.2f\n", '42/$onefeet'}'
