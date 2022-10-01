#!/bin/bash 



trapi() {

cols=`tput cols`
start=$((cols/2))
# char="*"
char="$3"
rows=$1
rows=$((rows+5))
# tput clear
for((i=$1;i<$rows;i++))
do 

deco1=$(($RANDOM % rows))
deco2=$((RANDOM % rows))
cols=$((start-i-$2))
tput cup $i $cols

#printf "$char" 
for((j=0;j<=(i+$2);j++))
do

if [ $i -eq $((rows-1)) ]
then
printf "$char "

elif [ $j -eq 0 ]
then
 printf "$char "
else

 if [ $j -eq $((i+$2)) ]
 then
  printf "$char "
 else
  if [ $j -eq $deco1 ]
  then
  printf "$4 "
  elif [ $j -eq  $deco2 ]
  then 
  printf "$5 "
  else
  printf "  "
  fi
 fi 

fi

done
done
echo""
} 

triangle() {
cols=`tput cols`
start=$((cols/2))
#echo "How many rows do you want"
#read rows
#echo "What character do you want to use"
#read char

rows=5
# char="*"
char="$1"

tput clear
for((i=0;i<rows;i++))
do 
cols=$((start-i))
tput cup $i $cols
deco=$(($RANDOM%rows))
#printf "$char" 
for((j=0;j<=i;j++))
do

if [ $i -eq $((rows-1)) ]
then
printf "$char "

elif [ $j -eq 0 ]
then
 printf "$char "
else

 if [ $j -eq $i ]
 then
  printf "$char "
 else
  if [ $j -eq $deco ]
  then 
  printf "$2 "
  else
  printf "  "
  fi
 fi 

fi

done
done
echo""
# sleep 5 
}

 
base() {

cols=`tput cols`
start=$((cols/2))
#char="*"
rows=5
char="$2"

# tput clear
for((i=0;i<5;i++))
do 
cols=$((start-i-2))
tput cup $(($1+i)) $cols

#printf "$char" 
for((j=0;j<=(i+2);j++))
do

if [ $i -eq $((rows-1)) ]
then
printf "$char "

elif [ $j -eq 0 ]
then
 printf "$char "
else

 if [ $j -eq $((i+2)) ]
 then
  printf "$char "
 else
 printf "  "
 fi 

fi

done
done
echo""
} 


echo "Enter character for the tree" 
read char 
echo "Enter first decoration character"
read ch_deco1
echo "Enter second decoration character"
read ch_deco2 
echo "Enter character for base" 
read base_char
triangle "$char" "$ch_deco1"
trapi 5 1 "$char" "$ch_deco1" "$ch_deco2"
trapi 10 2 "$char" "$ch_deco1" "$ch_deco2"
trapi 15 3 "$char" "$ch_deco1" "$ch_deco2"
base 20 "$base_char"