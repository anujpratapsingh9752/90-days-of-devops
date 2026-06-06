#!/bin/bash

c=1

until [ $c -ge 5 ]
do
	echo $c
	((c++))
done
