#!/bin/bash

read -p "Character introduced: " name

if [ $name == "pinda" ]; then
	echo "Hamza is spy"
else
	echo "Hamza is not a spy"
fi
