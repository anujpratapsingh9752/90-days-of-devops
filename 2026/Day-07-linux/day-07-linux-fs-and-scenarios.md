Day 07 - Linux File System Hierarchy & Scenario Practice

................................................
Linux File System Hierarchy

................................................
1. / directory

- / is the root directory and starting point of the Linux file system.

- Command:
ls -l /

- Example folders:
home
etc

- I would use this when navigating the complete Linux file system.


................................................
2. /home directory

- /home stores normal user files and personal data.

- Command:
ls -l /home

- Example folders:
user
ubuntu

- I would use this when accessing user documents and files.


................................................
3. /root directory

- /root is the home directory of the root user.

- Command:
ls -l /root

- Example files:
.bashrc
.cache

- I would use this when working as an administrator.


................................................
4. /etc directory

- /etc contains system configuration files.

- Command:
ls -l /etc

- Example files:
hostname
passwd

- I would use this when checking system configurations.


................................................
5. /var/log directory

- /var/log stores system and application log files.

- Command:
ls -l /var/log

- Example files:
syslog
auth.log

- I would use this when troubleshooting server issues.


................................................
6. /tmp directory

- /tmp stores temporary files created by applications.

- Command:
ls -l /tmp

- Example folders:
systemd-private
tmpfiles.d

- I would use this when checking temporary application files.


................................................
7. /bin directory

- /bin contains essential Linux commands and binaries.

- Command:
ls -l /bin

- Example commands:
cat
ls

- I would use this when running basic Linux commands.


................................................
8. /usr/bin directory

- /usr/bin contains user command binaries and applications.

- Command:
ls -l /usr/bin

- Example commands:
python3
nano

- I would use this when running installed applications.


................................................
9. /opt directory

- /opt stores optional and third-party applications.

- Command:
ls -l /opt

- Example folders:
google
containerd

- I would use this when installing third-party software.


................................................
Hands-on Practice

- Find largest log files:
du -sh /var/log/* 2>/dev/null | sort -h | tail -5

- Check hostname:
cat /etc/hostname

- Check home directory:
ls -la ~


................................................
Scenario Practice

................................................
Scenario 1 - Service Not Starting

Step 1:
systemctl status myapp

Why:
Checks whether the service is running, stopped, or failed.

Step 2:
journalctl -u myapp -n 50

Why:
Shows the last 50 logs of the service.

Step 3:
systemctl is-enabled myapp

Why:
Checks if the service starts automatically after reboot.

Step 4:
systemctl restart myapp

Why:
Restarts the service after troubleshooting.


................................................
Scenario 2 - High CPU Usage

Step 1:
top

Why:
Displays live CPU and memory usage.

Step 2:
htop

Why:
Shows interactive system monitoring.

Step 3:
ps aux --sort=-%cpu | head -10

Why:
Displays top processes using high CPU.


................................................
Scenario 3 - Finding Service Logs

Step 1:
systemctl status docker

Why:
Checks docker service status.

Step 2:
journalctl -u docker -n 50

Why:
Displays last 50 docker logs.

Step 3:
journalctl -u docker -f

Why:
Shows logs in real-time.


................................................
Scenario 4 - File Permission Issue

Step 1:
ls -l /home/user/backup.sh

Why:
Checks current file permissions.

Step 2:
chmod +x /home/user/backup.sh

Why:
Adds execute permission to the script.

Step 3:
ls -l /home/user/backup.sh

Why:
Verifies execute permission was added.

Step 4:
./backup.sh

Why:
Runs the script after fixing permissions.
