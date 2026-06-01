#!/bin/bash

read -p "enter filename: " file

if [ -f "$file" ]; then
	echo "file exists"
else
	echo "file does not exist"
fi
