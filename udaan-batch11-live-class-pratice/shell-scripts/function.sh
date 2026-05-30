#!/bin/bash

function create_user() {

	read -p "enter usernsme: " username
	sudo useradd -m $username
}

create_user

cat /etc/passwd
