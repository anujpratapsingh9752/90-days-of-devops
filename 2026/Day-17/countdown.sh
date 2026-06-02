#!/bin/bash

read -p "enter number: " num

while [ $num -ge 0 ]
do
	echo $num
	num=$((num-1))
done

echo "Done!"
