Day 04 Linux pratice cmds

A. Process Commands

1. ps aux

Use:
Running processes dekhne ke liye use hota hai.

Command:
ps aux

Example:
ps aux

What I Learned:
Is command se system me chal rahe saare processes dikhte hain.

--------------------------------------------------

2. top

Use:
Live running processes aur CPU/RAM usage dekhne ke liye.

Command:
top

Example:
top

What I Learned:
Is command se real-time system monitoring hoti hai.

--------------------------------------------------

B. Service Commands

1. systemctl status cron

Use:
Kisi service ka status check karne ke liye.

Command:
systemctl status cron

Example:
systemctl status cron

What I Learned:
Cron service active hai ya nahi ye check kiya.

--------------------------------------------------

2. systemctl list-units --type=service

Use:
System me chal rahi services dekhne ke liye.

Command:
systemctl list-units --type=service

Example:
systemctl list-units --type=service

What I Learned:
System ki active services dekhna seekha.

--------------------------------------------------

C. Log Commands

1. journalctl -u cron

Use:
Specific service ke logs dekhne ke liye.

Command:
journalctl -u cron

Example:
journalctl -u cron

What I Learned:
Cron service logs kaise check karte hain ye seekha.

--------------------------------------------------

2. tail -n 50 /var/log/syslog

Use:
Recent system logs dekhne ke liye.

Command:
tail -n 50 /var/log/syslog

Example:
tail -n 50 /var/log/syslog

What I Learned:
Latest logs aur errors check karna seekha.

--------------------------------------------------

D. Mini Troubleshooting Steps

1. Checked cron service status using:
systemctl status cron

2. Checked logs using:
journalctl -u cron

3. Verified that the service was active and running properly.
