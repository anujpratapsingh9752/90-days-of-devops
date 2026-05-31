#!/bin/bash

function show_disk() {
	echo "Availiblity storage"
	df -h | awk '{print $1, $4}'
}
