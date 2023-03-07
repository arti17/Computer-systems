#!/bin/sh

if [ $# -lt 1 ]; then
    echo "Not enough arguments."
    exit 1
fi

result=0
while read sor
do
        case $sor in
    egy)
        result=`expr $result + 1`
        ;;
    ketto)
        result=`expr $result + 2`
        ;;
    harom)
        result=`expr $result + 3`
        ;;
    negy)
        result=`expr $result + 4`
        ;;
    ot)
        result=`expr $result + 5`
        ;;
    hat)
        result=`expr $result + 6`
        ;;
    het)
        result=`expr $result + 7`
        ;;
    nyolc)
        result=`expr $result + 8`
        ;;
    kilenc)
        result=`expr $result + 9`
        ;;

    esac 
done < $1

echo $result