#!/bin/sh


prime=0

for((i=3;i<=$1;))
do
  for((j=i-1;j>=2;))
  do
    if [ `expr $i % $j` -ne 0 ]; then
      prime=1
    else
      prime=0
      break
    fi
    j=`expr $j - 1`
  done
  if [ $prime -eq 1 ] ; then
    echo $i
  fi
  i=`expr $i + 1`
done
