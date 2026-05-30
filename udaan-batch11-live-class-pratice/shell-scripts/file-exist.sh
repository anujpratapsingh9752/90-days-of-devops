#!/bin/bash

read -p "enter the file path: " filepath

if [ -f $filepath ]; then
	echo "file exists"
else
	echo "file doesno't exist"
fi
