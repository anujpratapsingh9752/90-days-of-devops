#!/bin/bash

function create_user() {

	read -p "enter usernsme: " username
	sudo useradd -m "$username"
}

function verify() {
	if getent passwd "$username" > /dev/null; then
		echo "user verify"
	else
		echo "user not verify"
	fi
}

