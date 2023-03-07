#!/bin/sh

f=1

for i in `seq 2 $1`
do
	f=`expr $f \* $i`
done	
echo $1 fakt: $f
