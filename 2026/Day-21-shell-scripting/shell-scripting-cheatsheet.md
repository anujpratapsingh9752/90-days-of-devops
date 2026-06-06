1. Day-21 Make Shell Scripting Cheat Sheet

---

2. Quick Reference Table

| Topic      | Syntax             | Example                    |
|------------|--------------------|----------------------------|
| Variable   | VAR="value"        | NAME="Anuj"                | 
| Argument   | $1 $2              | ./test.sh file.txt         |
| If         | if [ condition ]   | if [ -f file ]             |
| For Loop   | for i in           | for i in 1 2 3             | 
| Function   | name() { }         | greet() { echo Hi; }       |
| Grep       | grep pattern file  | grep "ERROR" app.log       |
| Sed        | sed 's/old/new/g'  | sed -i 's/dev/prod/g' file |
| Awk        | awk '{print $1}'   | awk -F: '{print $1}'       |

---

3. Basics

3.1 Shebang

bash
#!/bin/bash


Defines bash shell interpreter.

---

3.2 Run Script

Give execute permission:

bash
chmod +x test.sh


Run script:

bash
./test.sh


Run using bash:

bash
bash test.sh


---

3.3 Comments

Single line comment:

bash
# This is comment


Inline comment:

bash
echo "Hello" # print hello


---

3.4 Variables

Declare variable:

bash
NAME="Anuj"


Access variable:

bash
echo $NAME


Double quotes allow variable expansion:

bash
echo "$NAME"


Single quotes treat as plain text:

bash
echo '$NAME'


---

3.5 Read User Input

bash
read NAME
echo $NAME


With message:

bash
read -p "Enter name: " NAME


---

3.6 Command Line Arguments

Script name:

bash
$0


First argument:

bash
$1


Second argument:

bash
$2


Total arguments:

bash
$#


All arguments:

bash
$@


Previous command exit status:

bash
$?


Example:

bash
./test.sh file.txt backup


---

4. Operators and Conditionals

4.1 String Operators

Equal:

bash
[ "$a" = "$b" ]


Not equal:

bash
[ "$a" != "$b" ]


String empty:

bash
[ -z "$a" ]


String not empty:

bash
[ -n "$a" ]


---

4.2 Integer Operators

Equal:

bash
[ $a -eq $b ]


Not equal:

bash
[ $a -ne $b ]


Greater than:

bash
[ $a -gt $b ]


Less than:

bash
[ $a -lt $b ]


Greater or equal:

bash
[ $a -ge $b ]


Less or equal:

bash
[ $a -le $b ]


---

4.3 File Operators

File exists:

bash
[ -e file.txt ]


Regular file:

bash
[ -f file.txt ]


Directory exists:

bash
[ -d demo ]


Readable:

bash
[ -r file.txt ]


Writable:

bash
[ -w file.txt ]


Executable:

bash
[ -x script.sh ]


File not empty:

bash
[ -s file.txt ]


---

4.4 If Else

bash
if [ $a -gt 10 ]
then
    echo "Greater"
elif [ $a -eq 10 ]
then
    echo "Equal"
else
    echo "Smaller"
fi


---

4.5 Logical Operators

AND:

bash
[ $a -gt 5 ] && [ $a -lt 20 ]


OR:

bash
[ $a -lt 5 ] || [ $a -gt 20 ]


NOT:

bash
[ ! -f file.txt ]


---

4.6 Case Statement

bash
case $1 in
    start)
        echo "Starting"
        ;;
    stop)
        echo "Stopping"
        ;;
    *)
        echo "Invalid"
        ;;
esac


---

5. Loops

5.1 For Loop

bash
for i in 1 2 3 4 5
do
    echo $i
done


---

5.2 C Style Loop

bash
for (( i=1; i<=5; i++ ))
do
    echo $i
done


---

5.3 While Loop

bash
count=1

while [ $count -le 5 ]
do
    echo $count
    ((count++))
done


---

5.4 Until Loop

bash
count=1

until [ $count -gt 5 ]
do
    echo $count
    ((count++))
done


---

5.5 Break

bash
for i in 1 2 3
do
    if [ $i -eq 2 ]
    then
        break
    fi
done


---

5.6 Continue

bash
for i in 1 2 3
do
    if [ $i -eq 2 ]
    then
        continue
    fi

    echo $i
done


---

5.7 Loop Through Files

bash
for file in *.log
do
    echo $file
done


---

5.8 Read File Line by Line

bash
while read line
do
    echo $line
done < file.txt


---

6. Functions

6.1 Create Function

bash
greet() {
    echo "Hello"
}


---

6.2 Call Function

bash
greet


---

6.3 Function Arguments

bash
add() {
    echo $(($1 + $2))
}

add 10 20


---

6.4 Return Value

bash
test_func() {
    return 1
}

test_func

echo $?


Using echo:

bash
sum() {
    echo $(($1 + $2))
}


---

6.5 Local Variable

bash
demo() {
    local name="Anuj"
    echo $name
}


---

7. Text Processing Commands

7.1 Grep

Search word:

bash
grep "ERROR" app.log


Ignore case:

bash
grep -i "error" app.log


Recursive search:

bash
grep -r "ERROR" /var/log


Count matches:

bash
grep -c "ERROR" app.log


Show line numbers:

bash
grep -n "ERROR" app.log


Invert match:

bash
grep -v "INFO" app.log


Extended regex:

bash
grep -E "ERROR|CRITICAL" app.log


---

7.2 Awk

Print first column:

bash
awk '{print $1}' file.txt


Custom separator:

bash
awk -F: '{print $1}' /etc/passwd


BEGIN and END:

bash
awk 'BEGIN {print "Start"} {print $1} END {print "End"}' file.txt


---

7.3 Sed

Replace text:

bash
sed 's/dev/prod/g' file.txt


Delete line:

bash
sed '2d' file.txt


Edit file directly:

bash
sed -i 's/foo/bar/g' file.txt


---

7.4 Cut

Extract first column:

bash
cut -d: -f1 /etc/passwd


---

7.5 Sort

Alphabetical:

bash
sort file.txt


Numerical:

bash
sort -n marks.txt


Reverse:

bash
sort -r file.txt


Unique sort:

bash
sort -u file.txt


---

7.6 Uniq

Remove duplicates:

bash
uniq file.txt


Count duplicates:

bash
uniq -c file.txt


---

7.7 Tr

Lowercase to uppercase:

bash
echo "hello" | tr 'a-z' 'A-Z'


Delete character:

bash
echo "hello" | tr -d 'l'


---

7.8 WC

Line count:

bash
wc -l file.txt


Word count:

bash
wc -w file.txt


Character count:

bash
wc -c file.txt


---

7.9 Head

First 10 lines:

bash
head file.txt


First 5 lines:

bash
head -5 file.txt


---

7.10 Tail

Last 10 lines:

bash
tail file.txt


Follow logs live:

bash
tail -f app.log


---

8. Useful One-Liners

8.1 Delete files older than 7 days

bash
find /var/log -type f -mtime +7 -delete


---

8.2 Count lines in all log files

bash
wc -l *.log


---

8.3 Replace text in multiple files

bash
sed -i 's/dev/prod/g' *.txt


---

8.4 Check service status

bash
systemctl status nginx


---

8.5 Check disk usage

bash
df -h


---

8.6 Find errors in logs

bash
grep -r "ERROR" /var/log


---

8.7 Monitor logs in real time

bash
tail -f app.log | grep ERROR


---

9. Error Handling and Debugging

9.1 Exit Codes

Success:

bash
exit 0


Failure:

bash
exit 1


Check previous command status:

bash
echo $?


---

9.2 Exit on Error

bash
set -e


---

9.3 Error on Unset Variables

bash
set -u


---

9.4 Catch Pipe Errors

bash
set -o pipefail


---

9.5 Debug Mode

bash
set -x


---

9.6 Trap Cleanup

bash
trap 'echo Cleanup Done' EXIT


---

10. Final Notes

- Always use quotes around variables
- Use meaningful variable names
- Add comments in scripts
- Use functions for reusable code
- Handle errors properly
- Test scripts before production
- Practice real automation tasks daily
