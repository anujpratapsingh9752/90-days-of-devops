#!/bin/bash

SOURCE="/home/anuj/90-days-of-devops/udaan-batch11-live-class-pratice/shell-scripts"
TARGET="/home/anuj/backups"
FILENAME="$TARGET/backup-$(date +%y-%m-%d-%h-%m-%s).tar.gz"

echo "Saving backup to $FILENAME"

tar -czf $FILENAME $SOURCE

echo "backup created"
