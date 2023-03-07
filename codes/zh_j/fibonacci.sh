#!/bin/sh

if [ $# -lt 1 ]; then
    echo "Not enough arguments."
    exit 1
fi

a=0
b=1
count=2

echo $a
echo $b
while [ $count -le $1 ]
    do
        result=`expr $a + $b`
        a=$b
        b=$result
        echo $result
        count=`expr $count + 1`
done
