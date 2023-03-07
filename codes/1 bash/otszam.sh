#!/bin/sh

sum=0
for i in `seq 1 5` 
do
	echo $i szam:
	read add
	sum=`expr $sum + #add`
done

echo $sum

