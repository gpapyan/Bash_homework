#!/bin/bash

number=$1
divisors_sum=0
if [[ $number -le 0 ]]; then
    echo "Classification is only possible for natural numbers."
    exit 1
elif [[ $number -eq 1 ]]; then
    echo "deficient"
    exit 0
fi
iterator=$(bc <<< "scale=0; sqrt($1)")
for ((i=1; i<=iterator; i++)); do
    if [[ $((number%i)) -eq 0 ]]; then
        if [[ $((number/i)) -eq $number ]]; then
            ((divisors_sum+=i))
        elif [[ $((number/i)) -eq $i ]]; then
            ((divisors_sum+=i))
        else
            ((divisors_sum+=i))
            ((divisors_sum+=number/i))
        fi
    fi
done
if [[ $divisors_sum -eq $1 ]]; then
    echo "perfect"
elif [[ $divisors_sum -gt $1 ]]; then
    echo "abundant"
else
    echo "deficient"
fi