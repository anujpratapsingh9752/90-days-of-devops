#!/bin/bash

read -p "enter the filepath: " filepath

if [ -d $filepath ]; then
	echo "Directory exists"
else
	echo "File doesno't exists"
fi
