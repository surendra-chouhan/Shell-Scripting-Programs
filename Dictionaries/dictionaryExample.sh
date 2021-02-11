#!/bin/bash

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog Sound is : " ${sounds[dog]}  #to print dogs sound only
echo "All Animal Sound : " ${sounds[@]}  #to print All values
echo "Animal : " ${!sounds[@]}  #to print All keys
echo "Number of Animals : " ${#sounds[@]}   #to print Number of elements
unset sounds[dog]        #to delete a element or delete dog
echo "Number of Animals after unset is : " ${#sounds[@]}
