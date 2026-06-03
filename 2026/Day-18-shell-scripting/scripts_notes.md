Day 18 – Shell Scripting: Functions & Intermediate Concepts

1. Functions

Function Syntax

function_name() {
    commands
}

Function with Argument

greet() {
    echo "Hello, $1!"
}

greet "Anuj"

- "$1" → First argument
- "$2" → Second argument

---

Add Two Numbers Function

add() {
    sum=$(( $1 + $2 ))
    echo "Sum: $sum"
}

add 10 20

---

2. Disk & Memory Functions

Disk Check

check_disk() {
    df -h /
}

Command Used:

df -h

Purpose:

- Show disk usage

---

Memory Check

check_memory() {
    free -h
}

Command Used:

free -h

Purpose:

- Show RAM usage

---

3. Strict Mode

Syntax

set -euo pipefail

---

set -e

- Stop script if command fails

Example:

mkdir test
mkdir test

Second command fails → script stops

---

set -u

- Stop script if variable not defined

Example:

echo "$NAME"

Error:

- NAME variable not found

---

set -o pipefail

- Pipeline fail if any command fails

Example:

cat demo.txt | grep "hello"

If "cat" fails → whole pipeline fails

---

4. Local Variables

Local Variable

demo() {
    local name="Anuj"
    echo "$name"
}

- Accessible only inside function

---

Global Variable

city="Dewas"

- Accessible everywhere

---

Difference

Local Variable       | Global Variable
Inside function only | Whole script
Safer                | Can overwrite

---

5. System Info Reporter Script

Strict Mode

set -euo pipefail

---

Print Header Function

print_header() {
    echo "===================="
    echo "$1"
    echo "===================="
}

---

Hostname & OS Info

system_info() {
    hostnamectl
}

Command:

hostnamectl

---

Uptime

uptime_info() {
    uptime
}

Command:

uptime

---

Disk Usage

disk_usage() {
    df -h | sort -rk5 | head -5
}

Commands:

- df -h
- sort
- head

---

Memory Usage

memory_usage() {
    free -h
}

---

Top CPU Processes

top_processes() {
    ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6
}

Command:

ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu

---

Main Function

main() {

    print_header "SYSTEM INFO"
    system_info

    print_header "UPTIME"
    uptime_info

    print_header "DISK USAGE"
    disk_usage

    print_header "MEMORY USAGE"
    memory_usage

    print_header "TOP CPU PROCESSES"
    top_processes
}

main

---

6. Important Commands

chmod +x script.sh

./script.sh

df -h

free -h

uptime

ps

set -euo pipefail

---

7. Day 18 Learnings

- Functions
- Arguments
- Local Variables
- Global Variables
- Strict Mode
- Disk Monitoring
- Memory Monitoring
- System Monitoring
- Reusable Scripts
- Intermediate Shell Scripting
