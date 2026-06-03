Quick Troubleshooting Flow

1. Check Service
systemctl status <service>

2. Check Logs
journalctl -u <service> -n 50

3. Check Memory
free -h

4. Check Disk
df -h

5. Check Network
ss -tulpn
