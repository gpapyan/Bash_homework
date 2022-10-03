#!/bin/bash

trap "tput reset; tput cnorm; exit" 2
clear
tput civis
lin=2
col=$(($(tput cols) / 2))
c=$((col-1))
est=$((c-2))
color=0

# Set tcolor
tput setaf 2; tput bold

# Treee
for ((i=1; i<40; i+=2))
{
    tput cup $lin $col
    for ((j=1; j<=i; j++))
    {
        echo -n \*
    }
    let lin++
    let col--
}

## Set color
tput sgr0; tput setaf 130

# Root (Armaty)
for ((i=1; i<=3; i++))
{
    tput cup $((lin++)) $c
    echo 'MWM'
}

# kargin haxordum
tput setaf 93; tput bold
tput cup $lin $((c - 15)); echo Wishe you Merry Christmas
tput cup $((lin + 1)) $((c - 11)); echo And a Happy New Year 2023
let c++
k=1

while true; do
    for ((i=1; i<=35; i++)) {
        # Turn off the lights
        [ $k -gt 1 ] && {
            tput setaf 2; tput bold
            tput cup ${line[$[k-1]$i]} ${column[$[k-1]$i]}; echo \*
            unset line[$[k-1]$i]; unset column[$[k-1]$i]  # Array cleanup
        }

        li=$((RANDOM % 9 + 10))
        start=$((c-li+2))
        co=$((RANDOM % (li-2) * 2 + 1 + start))
        tput setaf $color; tput bold   # Switch colors
        tput cup $li $co
        echo o
        line[$k$i]=$li
        column[$k$i]=$co
        color=$(((color+1)%8))
    }
    k=$((k % 2 + 1))
done