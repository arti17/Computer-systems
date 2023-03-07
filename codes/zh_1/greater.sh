#!/bin/sh

if [ $# -lt 2 ]; then
    echo "Not enough arguments."
    exit 1
fi

szam=$1

for i in $* 
do
	if [ $i -gt $szam ];then
		echo $i	
	fi
	szam=$i
done
