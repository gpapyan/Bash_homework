#!/bin/sh


while IFS=: read -r f1 f2 f3 f4 f5 f6 f7
do 
if [ $f3 -gt 5 ] && [ $f3 -lt 1000 ]
then
 echo "User $f1 which UID $f3 and GID $f4" >> $HOME/users.log | sort -t " " -k 5 -g $HOME/users.log | tee $HOME/sorted.log

fi
done < /etc/passwd