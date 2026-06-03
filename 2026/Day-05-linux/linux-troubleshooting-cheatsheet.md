 Day 05 — Linux Troubleshooting Cheat Sheet

Troubleshooting means:
Finding what is wrong in the system or service.

Example:
Website not opening → check logs, memory, disk, network.

------------------------------------------------

1. uname -a

Use:
Shows Linux system & kernel information.

Example:
uname -a

Used For:
- kernel version
- Linux details
- architecture

------------------------------------------------

2. cat /etc/os-release

Use:
Shows Linux distribution details.

Example:
cat /etc/os-release

Used For:
- Ubuntu version
- Debian version
- OS details

------------------------------------------------

3. systemctl list-units --type=service

Use:
Shows all running services.

Example:
systemctl list-units --type=service

Used For:
- checking services
- background processes

------------------------------------------------

4. systemctl status cron

Use:
Checks whether service is running or failed.

Example:
systemctl status cron

Important:
- systemctl → service manager
- status → service health
- cron → service name

Meaning:
“Is service working properly?”

------------------------------------------------

5. journalctl -u cron -n 10

Use:
Shows last 10 logs of service.

Example:
journalctl -u cron -n 10

Important:
- -u → service logs
- -n 10 → last 10 lines

Meaning:
“Show recent logs of cron service.”

------------------------------------------------

6. free -h

Use:
Shows RAM usage.

Example:
free -h

Important:
- -h → human readable format

Used For:
- memory troubleshooting
- slow system

------------------------------------------------

7. df -h

Use:
Shows disk storage usage.

Example:
df -h

Important:
- Use% → used disk percentage

Used For:
- storage issues
- disk full problems

------------------------------------------------

8. du -sh /var/log

Use:
Shows total size of Linux log folder.

Example:
du -sh /var/log

Important:
- du → disk usage
- -s → summary
- -h → human readable
- /var/log → log folder

Meaning:
“How much storage logs are using?”

------------------------------------------------

9. ss -tulpn

Use:
Shows running network ports & services.

Example:
ss -tulpn

Important:
- -t → TCP
- -u → UDP
- -l → listening ports
- -p → process name
- -n → port number

Meaning:
“Which service is running on which port?”

Example Ports:
- SSH → 22
- Nginx → 80
- MySQL → 3306

------------------------------------------------

10. curl -I http://localhost

Use:
Checks whether website/server is responding.

Example:
curl -I http://localhost

Important:
- curl → sends request
- -I → headers only
- localhost → local server

Good Output:
HTTP/1.1 200 OK

Meaning:
Server is working.

Error Example:
Connection refused

Meaning:
Service/server may be down.

Another Example:
curl https://api.github.com

Used For:
- API testing
- website troubleshooting
- connectivity checking

------------------------------------------------

11. tail -n 50 /var/log/syslog

Use:
Shows recent system logs/errors.

Example:
tail -n 50 /var/log/syslog

Important:
- tail → reads last lines
- -n 50 → last 50 lines
- /var/log/syslog → system log file

Meaning:
“Show recent system activity/errors.”

