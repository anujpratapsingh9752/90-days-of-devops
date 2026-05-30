#!/bin/bash

<< comment

the shell script will take any package as an argument and it will install that package"

comment

echo "Installing $1"

sudo apt install $1 -y

echo "Successfully installed $1"

sudo systemctl status $1
