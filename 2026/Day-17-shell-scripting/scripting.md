Day 17 - Shell Scripting: Loops, Arguments & Error Handling

1. For Loop
   
   - Used to repeat a task multiple times.
   - Executes the same command for each item in a list.
   
   Syntax:
   
   for variable in list
do
    command
done
   
   Example 1:
   
   for fruit in Apple Banana Mango Orange Grapes
do
    echo $fruit
done
   
   Output:
   
   Apple
Banana
Mango
Orange
Grapes
   
   Example 2:
   
   for num in {1..10}
do
    echo $num
done
   
   Output:
   
   1
2
3
4
5
6
7
8
9
10

2. While Loop
   
   - Runs while a condition is true.
   - Stops when the condition becomes false.
   
   Syntax:
   
   while [ condition ]
do
    command
done
   
   Example:
   
   num=5

while [ $num -ge 0 ]
do
    echo $num
    num=$((num-1))
done

echo "Done!"
   
   Output:
   
   5
4
3
2
1
0
Done!
   
   Important:
   
   - "-ge" = Greater Than or Equal To
   - "$((num-1))" = Decrease value by 1

3. Command Line Arguments
   
   - Used to pass values while running a script.
   
   Example:
   
   ./script.sh Docker Linux Git
   
   Variables:
   
   - "$0" = Script name
   - "$1" = First argument
   - "$2" = Second argument
   - "$3" = Third argument
   - "$#" = Total number of arguments
   - "$@" = All arguments
   
   Example:
   
   ./args_demo.sh Docker Linux Git
   
   Result:
   
   $0 = ./args_demo.sh
$1 = Docker
$2 = Linux
$3 = Git
$# = 3
$@ = Docker Linux Git

4. If-Else Condition
   
   - Used to make decisions in a script.
   
   Syntax:
   
   if [ condition ]
then
    command
else
    command
fi
   
   Example:
   
   if [ $# -eq 0 ]
then
    echo "Usage: ./greet.sh <name>"
else
    echo "Hello, $1!"
fi
   
   Operators:
   
   - "-eq" = Equal To
   - "-ne" = Not Equal To
   - "-gt" = Greater Than
   - "-lt" = Less Than
   - "-ge" = Greater Than or Equal To
   - "-le" = Less Than or Equal To

5. Arrays
   
   - Store multiple values in a single variable.
   
   Example:
   
   packages=("nginx" "curl" "wget")
   
   Access all values:
   
   echo ${packages[@]}
   
   Output:
   
   nginx curl wget
   
   Loop through array:
   
   for pkg in "${packages[@]}"
do
    echo $pkg
done

6. Package Installation Automation
   
   Check package:
   
   dpkg -s nginx
   
   Purpose:
   
   - Checks whether a package is installed.
   
   Update package list:
   
   apt update
   
   Install package:
   
   apt install -y nginx
   
   Important:
   
   - "apt" = Package manager for Ubuntu/Debian
   - "install" = Install package
   - "-y" = Automatically answer Yes

7. Root User Check
   
   Check current user ID:
   
   echo $EUID
   
   Values:
   
   - Root User = 0
   - Normal User = 1000, 1001, etc.
   
   Condition:
   
   if [ "$EUID" -ne 0 ]
then
    echo "Run this script as root"
    exit 1
fi
   
   Important:
   
   - "EUID" = Effective User ID
   - "-ne" = Not Equal
   - "exit 1" = Stop script with error

8. Error Handling
   
   Stop script on first error:
   
   set -e
   
   Example:
   
   set -e

cd abc

echo "Hello"
   
   If directory "abc" does not exist:
   
   Script stops immediately
   
   Benefits:
   
   - Prevents unwanted execution.
   - Makes scripts safer.

9. OR Operator (||)
   
   Syntax:
   
   command1 || command2
   
   Meaning:
   
   - If command1 fails, command2 runs.
   
   Example:
   
   mkdir test || echo "Directory already exists"
   
   Another Example:
   
   cd abc || echo "Directory not found"

10. Commands Practiced Today

Make script executable:

chmod +x script.sh

Run script:

./script.sh

Run script as root:

sudo ./script.sh

Show current directory:

pwd

List files:

ls

Detailed file list:

ls -l

Create directory:

mkdir directory_name

Create file:

touch file_name

Change directory:

cd directory_name

11. Scripts Created Today

- for_loop.sh
- count.sh
- countdown.sh
- greet.sh
- args_demo.sh
- install_packages.sh
- safe_script.sh

12. Quick Revision

- For Loop → Repeat tasks.
- While Loop → Run until condition becomes false.
- $0 → Script name.
- $1 → First argument.
- $# → Number of arguments.
- $@ → All arguments.
- Arrays → Store multiple values.
- dpkg -s → Check package installation.
- apt install -y → Install package automatically.
- EUID → Current user ID.
- Root User ID → 0.
- set -e → Stop script on error.
- || → Run next command if first command fails.
- chmod +x → Make script executable.
