#!/bin/bash -x

read -p "Enter a number: " a;

case $a in
        [0-9])
                echo "Units"
                ;;
        [0-9][0-9])
                echo "Tens"
                ;;
        [0-9][0-9][0-9])
                echo "Hundreds"
                ;;
        [0-9][0-9][0-9][0-9])
                echo "Thousandds"
                ;;
        *)
                echo "Wrong Input"
                ;;
esac
