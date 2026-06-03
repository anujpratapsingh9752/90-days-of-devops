Day 16 - Shell Scripting Basics

1. What is Shell Scripting?

- Shell scripting means writing Linux commands in a file and executing them automatically.
- It helps automate repetitive tasks.
- Commonly used by DevOps Engineers for automation.

Use Cases

- Server monitoring
- Backup automation
- Service management
- Deployment automation
- Log analysis

---

2. Shebang ("#!/bin/bash")

What is it?

- First line of a shell script.
- Tells Linux which interpreter should run the script.

Syntax

#!/bin/bash

Why use it?

- Ensures the script runs with Bash.
- Makes scripts portable and predictable.

If Shebang is Removed

- "./script.sh" may not work properly.
- "bash script.sh" will still work.

---

3. Variables

What are Variables?

- Variables are used to store data.

Syntax

NAME="Anuj"
ROLE="DevOps Engineer"

Access Variable Value

echo "$NAME"
echo "$ROLE"

Rules

- No spaces around "="
- Use meaningful variable names.
- Usually written in uppercase.

Correct

NAME="Anuj"

Wrong

NAME = "Anuj"

---

4. Echo Command

Purpose

- Used to display output on the terminal.

Example

echo "Hello World"

Output

Hello World

Using Variables

echo "My name is $NAME"

---

5. Read Command

Purpose

- Used to take input from the user.

Syntax

read VARIABLE_NAME

Example

read -p "Enter your name: " NAME

Example Output

Enter your name: Anuj

---

6. Single Quotes vs Double Quotes

Single Quotes (' ')

Example

NAME="Anuj"
echo '$NAME'

Output

$NAME

Behavior

- Variable value is not expanded.

---

Double Quotes (" ")

Example

NAME="Anuj"
echo "$NAME"

Output

Anuj

Behavior

- Variable value is expanded.

---

7. If-Else Condition

Purpose

- Used for decision making.

Syntax

if [ condition ]; then
    commands
else
    commands
fi

Example

if [ $NUM -gt 0 ]; then
    echo "Positive"
else
    echo "Not Positive"
fi

---

8. Number Comparison Operators

Common Operators

Operator| Meaning
-gt| Greater Than
-lt| Less Than
-eq| Equal To
-ge| Greater Than or Equal
-le| Less Than or Equal
-ne| Not Equal

Example

if [ $NUM -gt 0 ]; then
    echo "Positive"
fi

---

9. File Existence Check

Purpose

- Check whether a file exists or not.

Syntax

if [ -f filename ]; then

Example

if [ -f test.txt ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

---

10. Useful File Operators

File Check

-f

- Checks if a regular file exists.

Directory Check

-d

- Checks if a directory exists.

Read Permission

-r

- Checks read permission.

Write Permission

-w

- Checks write permission.

Execute Permission

-x

- Checks execute permission.

---

11. Script Permissions

Give Execute Permission

chmod +x script.sh

Run Script

./script.sh

Why Required?

- Without execute permission, Linux will not run the script directly.

---

12. DevOps Perspective

Where Shell Scripting is Used?

1. Server Health Checks
2. Service Status Monitoring
3. Log Monitoring
4. Backup Automation
5. Deployment Automation
6. Cron Jobs
7. User Management
8. System Administration

---

13. Key Revision Points

1. "#!/bin/bash" → Defines interpreter.
2. Variables store data.
3. "echo" prints output.
4. "read" takes user input.
5. "if-else" performs decision making.
6. "-f" checks file existence.
7. "chmod +x" makes scripts executable.
8. Shell scripting is heavily used in DevOps automation.
