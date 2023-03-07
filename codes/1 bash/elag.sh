#!/bin/sh

if [ $1 -ge 5 ]
then 
	if [ $1 -le 10 ]
	then
		echo Yea
	else
		echo Nope, Too great
	fi
else
	echo Nope, Too small
fi
