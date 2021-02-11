#!/bin/bash

#a=`date +"%mm%dd"`
read -p "Enter month and date : " a;
b=$(date -d 0620 +%m%d)
c=$(date -d 0320 +%m%d)

if [[ $a -le $b && $a -ge $c ]]
then
        echo true
else
        echo false
fi
