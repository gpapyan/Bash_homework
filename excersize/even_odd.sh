#!/bin/bash


echo "---- EVEN & ODD DIGITS SUM -----"


n=$1
even=0
odd=0


while [ $n -gt 0 ]
do
r=$(expr $n % 10)
    if [ `expr $r % 2` == 0 ]
    then
	    even=$(expr $even + $r)
    else
	    odd=$(expr $odd + $r)
fi
n=$(expr $n / 10)
done
echo even sum is $even
echo odd sum is $odd

