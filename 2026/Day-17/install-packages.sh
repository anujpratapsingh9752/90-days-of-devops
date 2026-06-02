#!/bin/bash

# Check karo ki script root user se run ho rahi hai ya nahi
# EUID = Effective User ID
# Root user ka EUID hamesha 0 hota hai
if [ "$EUID" -ne 0 ]
then
    # Agar root nahi hai to message dikhao
    echo "Run this script as root"

    # Script ko error code 1 ke saath band kar do
    exit 1
fi

# Packages ki list (array) banao
packages=("nginx" "curl" "wget")

# Array ke har package par loop chalao
for pkg in "${packages[@]}"
do
    # Check karo package installed hai ya nahi
    # dpkg -s package ki information deta hai
    # &> /dev/null output ko hide karta hai
    if dpkg -s $pkg &> /dev/null
    then
        # Agar package installed hai to ye message print hoga
        echo "$pkg is already installed"
    else
        # Agar package installed nahi hai to install karenge
        echo "Installing $pkg..."

        # Package list update karo
        apt update

        # Package install karo
        # -y automatically Yes select kar deta hai
        apt install -y $pkg
    fi
done
