Day 06 - Linux Fundamentals File Input Output Practice

................................................
Learning

- Today we learned basic Linux file input and output operations.

- We practiced creating files, writing data, appending new content, and reading files.

- We also learned useful Linux and networking commands used in daily DevOps work.

- This practice helped us understand how Linux handles logs, configuration files, and automation scripts.


................................................
1. touch command

- Used to create a new empty file.

- Example:
touch notes.txt


................................................
2. echo with > redirection

- Used to write data into a file.

- Single > overwrites old content.

- Example:
echo "Linux practice started" > notes.txt


................................................
3. echo with >> redirection

- Used to append new content into an existing file.

- Example:
echo "Learning Linux commands" >> notes.txt


................................................
4. tee command

- Used to display output on terminal and save it into a file at the same time.

- -a option is used to append data without overwriting old content.

- Example:
echo "Using tee command" | tee -a notes.txt


................................................
5. cat command

- Used to read and display complete file content.

- Example:
cat notes.txt


................................................
6. head command

- Used to display first few lines from a file.

- Example:
head -n 3 notes.txt


................................................
7. tail command

- Used to display last few lines from a file.

- Example:
tail -n 3 notes.txt


................................................
8. history command

- Used to display previously executed terminal commands.

- Example:
history


................................................
9. pwd command

- Used to display current working directory.

- Example:
pwd


................................................
10. ip a command

- Used to display network interfaces and IP address information.

- a option means show all network interfaces.

- Example:
ip a


................................................
11. ping command

- Used to check internet connectivity and network response.

- Example:
ping google.com
