#!/bin/bash

# echo "Enter a String"
# read input
# reverse=""

# len=${#input}
# for (( i=$len-1; i>=0; i-- ))
# do 
# 	reverse="$reverse${input:$i:1}"
# done
# if [ $input == $reverse ]
# then
#     echo "$input is Palindrom"
# else
#     echo "$input is Not Palindrom"
# fi


VAR=$(echo $1 | tr '[:upper:]' '[:lower:]')
reverse=""

len=${#VAR}
for (( i=$len-1; i>=0; i-- ))
do 
	reverse="$reverse${VAR:$i:1}"
done
if [ $VAR == $reverse ]
then
    echo "$VAR is Palindrom"
else
    echo "$VAR is Not Palindrom"
fi