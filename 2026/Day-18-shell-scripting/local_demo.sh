#!/bin/bash

demo_local(){
	local name="Anuj"
	echo "Inside function: $name"
}

demo_global(){
	city="Satna"
}

demo_local
echo "Outside function: ${name:- Not Available}"

demo_global
echo "Global variable: $city"
