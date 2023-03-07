#!/bin/sh


numbers=0

if [ $# -gt 0 ]
then
	numbers=$*
else
	numbers=`cat`
fi

sum=0

for i in numbers
do
	sum=`expr $sum + $i`
done

echo Sum: $sum
