Day 19 - Shell Scripting Project

1. Log Rotation Practice
   
   a) Create Folder
   
   mkdir test-logs
   
   b) Create Log Files
   
   touch test-logs/app.log
touch test-logs/server.log
   
   c) Check Files
   
   ls test-logs
   
   Output:
   
   app.log
server.log
   
   d) Create Script
   
   vim log_rotate.sh
   
   e) Paste Script
   
   #!/bin/bash

DIR=$1

if [ ! -d "$DIR" ]
then
    echo "Directory not found"
    exit 1
fi

find "$DIR" -name "*.log" -exec gzip {} \;

find "$DIR" -name "*.gz" -mtime +30 -delete

echo "Log rotation completed"
   
   f) Give Permission
   
   chmod +x log_rotate.sh
   
   g) Run Script
   
   ./log_rotate.sh test-logs
   
   h) Check Output
   
   ls test-logs
   
   Output:
   
   app.log.gz
server.log.gz
   
   i) What I Learned
   
   - find command search files
   - gzip compress files
   - chmod give execute permission
   - ./ run script

2. Backup Script Practice
   
   a) Create Source Folder
   
   mkdir my-data
   
   b) Create Dummy File
   
   touch my-data/file1.txt
   
   c) Create Backup Folder
   
   mkdir backups
   
   d) Create Script
   
   vim backup.sh
   
   e) Paste Script
   
   #!/bin/bash

SOURCE=$1

DEST=$2

DATE=$(date +%Y-%m-%d)

BACKUP="backup-$DATE.tar.gz"

tar -czf "$DEST/$BACKUP" "$SOURCE"

echo "Backup completed"
   
   f) Give Permission
   
   chmod +x backup.sh
   
   g) Run Script
   
   ./backup.sh my-data backups
   
   h) Check Backup
   
   ls backups
   
   Output:
   
   backup-2026-06-04.tar.gz
   
   i) Check Backup Content
   
   tar -tzf backups/backup-2026-06-04.tar.gz
   
   j) What I Learned
   
   - tar create backup
   - date command get current date
   - tar.gz compressed backup file

3. Maintenance Script Practice
   
   a) Create Script
   
   vim maintenance.sh
   
   b) Paste Script
   
   #!/bin/bash

echo "Maintenance Started"

./log_rotate.sh test-logs

./backup.sh my-data backups

echo "Maintenance Completed"
   
   c) Give Permission
   
   chmod +x maintenance.sh
   
   d) Run Script
   
   ./maintenance.sh
   
   e) What I Learned
   
   - One script can run another script
   - Automation using shell scripting

4. Health Check Script Practice
   
   a) Create Script
   
   vim health_check.sh
   
   b) Paste Script
   
   #!/bin/bash

echo "Date: $(date)"

uptime

df -h

free -h
   
   c) Give Permission
   
   chmod +x health_check.sh
   
   d) Run Script
   
   ./health_check.sh
   
   e) What I Learned
   
   - uptime check system running time
   - df -h check disk space
   - free -h check RAM usage

5. Cron Job Practice
   
   a) Check Cron Jobs
   
   crontab -l
   
   b) Edit Cron Jobs
   
   crontab -e
   
   c) Add Test Cron Job
   
   * * * * * echo "Hello Cron" >> /tmp/cron-test.log
   
   d) Check Cron Output
   
   cat /tmp/cron-test.log
   
   e) Every 2 Minute Cron
   
   */2 * * * * echo "Every 2 minute" >> /tmp/test2.log
   
   f) What I Learned
   
   - Cron run commands automatically
   - Linux scheduler
   - Task automation

6. Commands Practiced
   
   mkdir
touch
ls
chmod +x
./script.sh
find
gzip
tar
crontab -e
crontab -l
uptime
df -h
free -h
