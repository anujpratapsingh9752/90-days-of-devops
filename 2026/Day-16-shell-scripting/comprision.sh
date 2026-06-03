#!/bin/bash

read -p "enter no: " num

if [ $num -gt 0 ]; then
	echo "positive num"
elif [ $num -lt 0 ]; then
	echo "negative num"
else
	echo "zero"
fi
