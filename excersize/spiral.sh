#!/bin/bash


start=0
end=$1
count=1
while (( count <= $1*$1 )); do
    (( end - start == 1 )) && { out[$(($1*$1/2))]=$(($1*$1)); break; }
    for (( i=start; i<end-1; i++ )); do out[$((i+start*$1))]=$((count++)); done
    for (( i=start; i<end-1; i++ )); do out[$(($1*i+end-1))]=$((count++)); done
    for (( i=start; i<end-1; i++ )); do out[$((end*$1-i-1))]=$((count++)); done
    for (( i=end-1; i>start; i-- )); do out[$(($1*i+start))]=$((count++)); done
    (( end-- ))
    (( start++ ))
done
for (( idx=0; idx<${#out[@]}; idx+=$1 )); do
    echo "${out[@]:idx:$1}"
done