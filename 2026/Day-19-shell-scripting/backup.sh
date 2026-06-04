#!/bin/bash

# First argument source folder
SOURCE=$1

# Second argument backup destination folder
DEST=$2

# Check karo source folder exist karta hai ya nahi
if [ ! -d "$SOURCE" ]
then
    # Error message
    echo "Source not found"

    # Script stop
    exit 1
fi

# Current date variable me store karo
# date command current date deta hai
DATE=$(date +%Y-%m-%d)

# Backup file ka naam banana
# Example:
# backup-2026-06-04.tar.gz
BACKUP="backup-$DATE.tar.gz"

# tar command:
# -c => archive create
# -z => gzip compression
# -f => file name
tar -czf "$DEST/$BACKUP" "$SOURCE"

# Success message
echo "Backup completed"
