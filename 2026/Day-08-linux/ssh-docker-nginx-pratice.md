Day 08 - Cloud Server Setup: Docker, Nginx & Web Deployment

This document contains the setup and deployment process of Docker and Nginx on Ubuntu using WSL.

---

1. Update System Packages

bash
sudo apt update && sudo apt upgrade -y


- Updates package list.
- Upgrades installed packages.
- Keeps the system updated.

---

2. Install Docker

bash
sudo apt install docker.io -y


- Installs Docker on Ubuntu.
- Downloads Docker packages automatically.
- Prepares the system for container usage.

---

3. Check Docker Version

bash
docker --version


- Verifies Docker installation.
- Displays installed Docker version.
- Confirms Docker is working properly.

---

4. Start Docker Service

bash
sudo systemctl start docker


bash
sudo service docker start


- Starts Docker service.
- Enables Docker engine to run containers.
- Ensures Docker is active.

---

5. Check Docker Status

bash
sudo systemctl status docker


bash
sudo service docker status


- Checks Docker service status.
- Verifies whether Docker is running.
- Helps in troubleshooting service issues.

---

6. Install Nginx

bash
sudo apt install nginx -y


- Installs Nginx web server.
- Downloads required web server packages.
- Prepares the server for web hosting.

---

7. Start Nginx Service

bash
sudo systemctl start nginx


bash
sudo service nginx start


- Starts Nginx service.
- Makes the web server active.
- Allows browser access.

---

8. Check Nginx Status

bash
sudo systemctl status nginx


bash
sudo service nginx status


- Checks whether Nginx is running properly.
- Verifies web server health.
- Helps identify service issues.

---

9. Open Nginx Webpage

text
http://localhost


- Opens Nginx webpage in browser.
- Verifies successful deployment.
- Confirms server accessibility.

---

10. View Nginx Logs

bash
cat /var/log/nginx/access.log


- Displays Nginx access logs.
- Shows browser requests information.
- Helps in monitoring web traffic.

---

11. Save Logs Into File

bash
cat /var/log/nginx/access.log > nginx-logs.txt


- Saves logs into a text file.
- Creates a separate backup log file.
- Useful for troubleshooting and analysis.

---

12. View Saved Log File

bash
cat nginx-logs.txt


- Displays saved log file content.
- Verifies successful log extraction.
- Helps review stored logs.

---

Challenges Faced

- Faced some permission-related warnings during setup and solved them using sudo commands.

- Practiced managing Linux services using both systemctl and service commands.

---

What I Learned

- Learned how to install Docker and Nginx on Ubuntu.

- Learned how to manage Linux services using both systemctl and service commands.

- Learned how to access a web server using localhost.

- Learned how to view and save Nginx logs.

- Learned the importance of logs and services in DevOps troubleshooting.

---

Files Included

- day-08-cloud-deployment.md

- nginx-logs.txt

- ssh-connection.png

- nginx-webpage.png

- docker-nginx.png
