Day03 Linux Command-Line Cheat Sheet

This document is a quick reference for the most important Linux commands used in server management and DevOps.

==================================================

A. Navigating the File System & Finding Your Way

These commands help you move through folders and locate important files in Linux.

--------------------------------------------------

1. pwd

What it does:
Shows your current working directory.

Example:
pwd

--------------------------------------------------

2. ls

What it does:
Lists files and folders.

Example:
ls

--------------------------------------------------

3. ls -a

What it does:
Lists all files including hidden files.

Example:
ls -a

--------------------------------------------------

4. cd <directory>

What it does:
Changes the current directory.

Example:
cd /var/log

--------------------------------------------------

5. cd ..

What it does:
Moves one folder back.

Example:
cd ..

--------------------------------------------------

6. clear

What it does:
Clears the terminal screen.

Example:
clear

--------------------------------------------------

7. cat /etc/os-release

What it does:
Displays Linux distribution and version details.

Example:
cat /etc/os-release

--------------------------------------------------

8. hostnamectl

What it does:
Shows system hostname and OS information.

Example:
hostnamectl

==================================================

B. Managing Software (Debian/Ubuntu)

These commands help install, update, and remove software packages.

--------------------------------------------------

1. sudo apt update

What it does:
Refreshes the package list from repositories.

Example:
sudo apt update

--------------------------------------------------

2. sudo apt upgrade

What it does:
Upgrades installed packages.

Example:
sudo apt upgrade

--------------------------------------------------

3. sudo apt install <package>

What it does:
Installs a software package.

Example:
sudo apt install git

--------------------------------------------------

4. sudo apt remove <package>

What it does:
Removes installed software.

Example:
sudo apt remove git

==================================================

C. Viewing & Editing Files

These commands are used to open, edit, save, and search files in Linux.

--------------------------------------------------

1. nano <file>

What it does:
Opens a simple text editor for editing files.

Example:
nano config.txt

Important Nano Shortcuts:

CTRL + O  → Save file

Press ENTER → Confirm save

CTRL + X  → Exit nano editor

CTRL + K  → Cut line

CTRL + U  → Paste line

CTRL + W  → Search text

--------------------------------------------------

2. vi <file>

What it does:
Opens the vi text editor.

Example:
vi config.txt

Important VI Commands:

Esc + i    → Insert mode

Esc + :wq  → Save and Exit

Esc + :q!  → Exit without saving

Esc + dd   → Delete line

--------------------------------------------------

3. cat <file>

What it does:
Displays file content.

Example:
cat notes.txt

--------------------------------------------------

4. touch <file>

What it does:
Creates a new empty file.

Example:
touch demo.txt

--------------------------------------------------

5. mkdir <folder>

What it does:
Creates a new folder.

Example:
mkdir project

--------------------------------------------------

6. rm <file>

What it does:
Deletes a file.

Example:
rm demo.txt

--------------------------------------------------

7. grep "<text>" <file>

What it does:
Searches for specific text inside a file.

Example:
grep "error" server.log

==================================================

D. User & Permission Management

These commands manage users and permissions.

--------------------------------------------------

1. sudo <command>

What it does:
Runs a command with administrator privileges.

Example:
sudo apt update

--------------------------------------------------

2. useradd <name>

What it does:
Creates a new user account.

Example:
sudo useradd newuser

--------------------------------------------------

3. passwd <user>

What it does:
Sets password for a user.

Example:
sudo passwd newuser

--------------------------------------------------

- Linux File Permission Numbers

| Number | Permission | Meaning |
|---|---|---|
| 7 | rwx | Read + Write + Execute |
| 6 | rw- | Read + Write |
| 5 | r-x | Read + Execute |
| 4 | r-- | Read Only |
| 3 | -wx | Write + Execute |
| 2 | -w- | Write Only |
| 1 | --x | Execute Only |
| 0 | --- | No Permission |

---

Permission Values

| Symbol | Value | Meaning |
|---|---|---|
| r | 4 | Read |
| w | 2 | Write |
| x | 1 | Execute |

---

Easy Formula

bash
4 = Read
2 = Write
1 = Execute


4. chmod +x <file>

What it does:
Makes a file executable.

Example:
chmod +x deploy.sh

--------------------------------------------------

5. chmod 777 <file>

What it does:
Gives full permissions.

Example:
chmod 777 test.sh

--------------------------------------------------

6. chown <user>:<group> <file>

What it does:
Changes file ownership.

Example:
sudo chown user:group file

==================================================

E. Networking & Remote Access

These commands help manage networking and remote connections.

--------------------------------------------------

1. ping <destination>

What it does:
Checks if another server or website is reachable.

Example:
ping google.com

--------------------------------------------------

2. ip addr

What it does:
Displays IP addresses and network interfaces.

Example:
ip addr

--------------------------------------------------

3. ifconfig

What it does:
Shows network configuration.

Example:
ifconfig

--------------------------------------------------

4. netstat -tuln

What it does:
Shows all listening ports.

Example:
netstat -tuln

--------------------------------------------------

5. ssh <user>@<host>

What it does:
Connects securely to a remote server.

Example:
ssh user@192.168.1.5

==================================================

F. Power User Concepts

These concepts help combine commands for automation.

--------------------------------------------------

1. Pipe ( | )

What it does:
Passes output from one command to another command.

Example:
cat log.txt | grep error

--------------------------------------------------

2. Redirect ( > )

What it does:
Saves output into a file and overwrites old content.

Example:
date > last_run.txt

--------------------------------------------------

3. Append ( >> )

What it does:
Adds output to the end of a file without deleting old data.

Example:
echo "Server rebooted" >> system_events.log

==================================================

G. GitHub Push Commands

Use these commands to push your cmd.md file to GitHub.

--------------------------------------------------

1. Initialize Git

Command:
git init

--------------------------------------------------

2. Add File

Command:
git add cmd.md

--------------------------------------------------

3. Commit File

Command:
git commit -m "Added Linux command cheat sheet"

--------------------------------------------------

4. Create Main Branch

Command:
git branch -M main

--------------------------------------------------

5. Connect GitHub Repository

Command:
git remote add origin YOUR_GITHUB_REPO_URL

--------------------------------------------------

6. Push to GitHub

Command:
git push -u origin main

==================================================

Pro Tip

Use the following commands for help:

man <command>

OR

<command> --help
