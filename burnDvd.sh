#!/bin/bash

# https://unix.stackexchange.com/questions/172095/print-numbers-from-1-50
number_of_dvds=6
x=1
while [ $x -le $number_of_dvds ]
do
    read -p "Please insert a blank DVD and press enter to continue with burning DVD number $((x))"
    cdrskin -v dev=/dev/sr0 -eject ./$1.iso
    x=$(($x + 1))
done

