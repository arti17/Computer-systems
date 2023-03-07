#!/bin/sh

counter=1

while read -r line
do
	if [ `expr $counter % 2` -eq 0 ]
	then
		echo $counter: $line >> even.txt
	else
		echo $counter: $line >> odd.txt
	fi
	counter=`expr $counter + 1`
done < $1
