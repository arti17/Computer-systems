#!/bin/sh

if [ $# -lt 1 ]; then
    echo "Not enough arguments."
    exit 1
fi

file=$1

act_of_violence=0
guards_count=0
max_num_of_acts=0

while read line
do 
    name=$(echo $line | cut -d"," -f1)
    address=$(echo $line | cut -d"," -f2)
    guards=$(echo $line | cut -d"," -f3)
    violence=$(echo $line | cut -d"," -f4)

    if [ $violence -eq 0 ]; then
        echo $name - there was no violence
        act_of_violence=1
    fi

    guards=$(echo $line | cut -d"," -f3)
    guards_count=`expr $guards_count + $guards`

    if [ $violence -gt $max_num_of_acts ]; then
        max_num_of_acts=$violence
    fi
done < $file


if [ $act_of_violence -eq 0 ]; then
    echo "NINCS - Violence was everywhere("
fi

echo Total guards in file: $guards_count


while IFS=',' read name address guards violence; do
    if [ $violence -eq $max_num_of_acts ]; then
        echo $name $address
    fi
done < $file
