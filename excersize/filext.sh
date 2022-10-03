#!/bin/bash


if [ -d $1 ]
then
        echo "The provided argument is the directory."
elif [ -f $1 ]
then
        echo "The provided argument is the file." 
else
        echo "The given argument does not exist on the file system."
fi