#!/bin/bash

x=$1
y=$2


if [[ "$x" -gt 0 && "$y" -gt 0 ]]
then
    echo "lies in First quadrant"
 
elif [[ "$x" -lt 0 && "$y" -gt 0 ]]
then
    echo "lies in Second quadrant"
         
elif [[ "$x" -lt 0 && "$y" -lt 0 ]]
then
    echo "lies in Third quadrant"
     
elif [[ "$x" -gt 0 && "$y" -lt 0 ]]
then
    echo "lies in Fourth quadrant"
         
elif [[ "$x" -eq 0 && "$y" -gt 0 ]]
then
    echo "lies at positive y axis"
     
elif [[ "$x" -eq 0 && "$y" -lt 0 ]]
then
    echo "lies at negative y axis"
     
elif [[ "$y" -eq 0 && "$x" -lt 0 ]]
then
    echo "lies at negative x axis"
     
elif [[ "$y" -eq 0 && "$x" -gt 0 ]]
then
    echo "lies at positive x axis"
     
else
    echo "lies at origin"
fi