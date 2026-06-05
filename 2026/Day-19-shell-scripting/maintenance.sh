#!/bin/bash

# Script bash shell me run hogi

# Maintenance process start hone ka message show karega
echo "Maintenance Started"

# Current directory ke andar jo log_rotate.sh script hai
# usko run karega aur /var/log argument pass karega
# Iska use logs ko manage/rotate karne ke liye hota hai
./log_rotate.sh /var/log

# Current directory ke andar backup.sh script run hogi
# "my-data" source folder ho sakta hai
# "backups" destination folder ho sakta hai
# Yani data ka backup create karega
./backup.sh new-data backups-new

# Maintenance complete hone ka message show karega
echo "Maintenance Completed"
