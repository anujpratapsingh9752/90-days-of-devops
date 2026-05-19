Day 02 Linux Process & System Commands Practice

1. ps → running processes dekhne ke liye

- ps


2. ps aux → sabhi running processes detail mein dekhne ke liye

- ps aux


3. top → live running processes aur system usage dekhne ke liye

- top


4. sleep → kuch seconds wait karne ke liye

- sleep 5

- Example:
- 5 second tak terminal wait karega


5. kill → process band karne ke liye

- Pehle process id (PID) dekho:
- ps aux

- Example:
- kill 1234

- Yahan 1234 PID hota hai


6. kill -9 → forcefully process band karne ke liye

- kill -9 1234


7. systemctl → services manage karne ke liye

- Service status check karna:
- systemctl status ssh

- Service start karna:
- systemctl start ssh

- Service stop karna:
- systemctl stop ssh

- Service restart karna:
- systemctl restart ssh


8. journalctl → system logs dekhne ke liye

- Saare logs dekhna:
- journalctl

- Latest logs dekhna:
- journalctl -n 20

- Live logs dekhna:
- journalctl -f
