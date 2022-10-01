#!/bin/bash
read -p "enter the size of the rectangle: " size
clear
for (( i = 1; i <= size; i++ )); do
  for (( j = 1; j <= size; j++ )); do
    if (( 1 == i || size == i || 1 == j || size == j )); then
      echo -n "*"
    else
      echo -n " "
    fi
  done
  echo
done
