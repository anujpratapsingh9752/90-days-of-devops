#!/bin/bash

# Start message
echo "Maintenance Started"

# Log rotation script run karo
./log_rotate.sh /var/log

# Backup script run karo
./backup.sh my-data backups

# Completion message
echo "Maintenance Completed"
