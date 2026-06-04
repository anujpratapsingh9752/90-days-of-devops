#!/bin/bash

# User se first argument lena
# Example:
# ./log_rotate.sh /var/log
DIR=$1

# Check karo directory exist karti hai ya nahi
# -d => directory check
# ! => NOT
if [ ! -d "$DIR" ]
then
    # Error message print karo
    echo "Directory not found"

    # Script ko stop karo
    exit 1
fi

# find command:
# "$DIR" => kis folder me search karna hai
# -name "*.log" => sirf .log files
# -mtime +7 => 7 din purani files
# -exec => command execute karna
# gzip {} => file compress karo
# \; => exec command end
find "$DIR" -name "*.log" -mtime +0 -exec gzip {} \;

# 30 din purani .gz files delete karo
# .gz => compressed files
# -delete => remove files
find "$DIR" -name "*.gz" -mtime +30 -delete

# Completion message
echo "Log rotation completed"
