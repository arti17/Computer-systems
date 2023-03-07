#!/bin/sh

if [ $# -lt 3 ]; then
    echo "Not enough arguments."
    exit 1
fi

if [ $(expr $(expr $2 - $3) % $1) -eq 0 ]; then
    echo "oszthato"
else
    echo "nem oszthato"
fi