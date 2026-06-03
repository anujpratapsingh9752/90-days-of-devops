Day 10 – File Permissions & File Operations Challenge

Introduction

In this practical, I learned how to:
- Create files and directories in Linux
- Read file contents
- Understand Linux file permissions
- Modify permissions using chmod
- Test file permissions practically

---

Task 1 – Create Files

1. Create an Empty File

Command:
bash
touch devops.txt


Use:
This command creates an empty file named devops.txt.

Verification:
bash
ls -l devops.txt


---

2. Create notes.txt with Content

Command:
bash
echo "Linux permissions practice" > notes.txt


Use:
This command creates notes.txt and writes content inside the file.

Verification:
bash
cat notes.txt


Output:
text
Linux permissions practice


---

3. Create script.sh using Vim

Command:
bash
vim script.sh


Content Added:
bash
echo "Hello DevOps"


Save and Exit:
bash
ESC
:wq


Use:
This command opens the Vim editor to create and edit the script file.

Verification:
bash
cat script.sh


Output:
text
echo "Hello DevOps"


---

4. Check File Permissions

Command:
bash
ls -l


Use:
This command displays file permissions, ownership, and file details.

Example Output:
text
-rw-r--r-- 1 user user    0 May 26 devops.txt
-rw-r--r-- 1 user user   28 May 26 notes.txt
-rw-r--r-- 1 user user   20 May 26 script.sh


---

Task 2 – Read Files

1. Read notes.txt

Command:
bash
cat notes.txt


Use:
The cat command displays the contents of the file.

---

2. Open script.sh in Read-Only Mode

Command:
bash
vim -R script.sh


Use:
The -R option opens the file in read-only mode.

---

3. Display First 5 Lines of /etc/passwd

Command:
bash
head -n 5 /etc/passwd


Use:
The head command displays the first few lines of a file.

---

4. Display Last 5 Lines of /etc/passwd

Command:
bash
tail -n 5 /etc/passwd


Use:
The tail command displays the last few lines of a file.

---

Task 3 – Understand File Permissions

1. Permission Format

text
rwxrwxrwx


Meaning:

- r = Read = 4
- w = Write = 2
- x = Execute = 1

---

2. Permission Structure

- First rwx → Owner permissions
- Second rwx → Group permissions
- Third rwx → Others permissions

---

3. Example Permission

text
-rw-r--r--


Explanation:

- Owner → Read + Write
- Group → Read
- Others → Read

---

4. Check Current Permissions

Command:
bash
ls -l devops.txt notes.txt script.sh


Use:
This command checks the current permissions of the files.

---

Task 4 – Modify Permissions

1. Make script.sh Executable

Command:
bash
chmod +x script.sh


Use:
This command adds execute permission to the script file.

Verification:
bash
ls -l script.sh


Run Script:
bash
./script.sh


Output:
text
Hello DevOps


Explanation:
The script runs successfully because execute permission was added.

---

2. Make devops.txt Read-Only

Command:
bash
chmod a-w devops.txt


Use:
This command removes write permission from all users.

Verification:
bash
ls -l devops.txt


Example Output:
text
-r--r--r--


---

3. Set notes.txt Permission to 640

Command:
bash
chmod 640 notes.txt


Use:
This command sets custom permissions using numeric values.

Meaning of 640:

- Owner → Read + Write
- Group → Read
- Others → No Permission

Verification:
bash
ls -l notes.txt


Expected Output:
text
-rw-r-----


---

4. Create project Directory with 755 Permission

Create Directory:
bash
mkdir project


Set Permission:
bash
chmod 755 project


Use:
This command creates a directory and sets its permissions.

Meaning of 755:

- Owner → Read + Write + Execute
- Group → Read + Execute
- Others → Read + Execute

Verification:
bash
ls -ld project


Expected Output:
text
drwxr-xr-x


---

Task 5 – Test Permissions

1. Try Writing to Read-Only File

Command:
bash
echo "test" >> devops.txt


Error:
text
Permission denied


Reason:
The file was set to read-only, so writing was not allowed.

---

2. Remove Execute Permission and Run Script

Remove Execute Permission:
bash
chmod -x script.sh


Run Script Again:
bash
./script.sh


Error:
text
Permission denied


Reason:
Without execute permission, the script cannot run.

---

Commands Used

bash
touch devops.txt
echo "Linux permissions practice" > notes.txt
vim script.sh
cat notes.txt
vim -R script.sh
head -n 5 /etc/passwd
tail -n 5 /etc/passwd
ls -l
chmod +x script.sh
chmod a-w devops.txt
chmod 640 notes.txt
mkdir project
chmod 755 project
./script.sh


---

What I Learned

- Linux permissions use the rwx format
- chmod is used to change file permissions
- Execute permission is required to run shell scripts
- Numeric permissions like 640 and 755 define access levels
- ls -l helps verify file permissions
- Read-only files cannot be modified
- Files without execute permission cannot run

---

Final Verification Commands

bash
pwd
whoami
ls -la


---

Conclusion

This practical helped me understand:
- File creation and reading in Linux
- Linux permission structure
- Permission modification using chmod
- Practical permission testing
- Permission-related error handling
