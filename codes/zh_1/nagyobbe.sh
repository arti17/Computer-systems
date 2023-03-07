#!/bin/sh

if [ `expr $1 - $2` -gt `expr $2 + $3` ]; then
	echo nagyobb
else
	echo kisebb
fi
