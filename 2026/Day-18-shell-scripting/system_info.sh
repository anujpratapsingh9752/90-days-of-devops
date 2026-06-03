#!/bin/bash

# Script ko strict mode me chalata hai
# -e  -> Agar koi command fail ho jaye to script stop
# -u  -> Agar undefined variable use hua to error
# -o pipefail -> Pipe me koi bhi command fail hui to pura pipeline fail maana jayega
set -euo pipefail


# Header print karne wala function
print_header() {

    # Empty line print karega
    echo ""

    # Simple design line
    echo "=============================="

    # $1 ka matlab:
    # Function call karte time jo pehla value pass karte hain
    # Example:
    # print_header "SYSTEM INFO"
    # To $1 = SYSTEM INFO
    echo "$1"

    # Bottom design line
    echo "=============================="
}


# System information dikhane wala function
system_info() {

    # hostnamectl command:
    # System ka hostname
    # OS information
    # Kernel version
    # Architecture
    # sab show karta hai
    hostnamectl
}


# System uptime dikhane wala function
uptime_info() {

    # uptime command:
    # System kitne time se ON hai
    # Load average
    # Users
    # show karta hai
    uptime
}


# Disk usage check karne wala function
disk_usage() {

    # df -h
    # Disk space human readable format me show karta hai
    # Example: GB, MB

    # sort -rk5
    # 5th column (Use%) ko reverse order me sort karega
    # Sabse jyada usage wala upar aayega

    # head -5
    # Top 5 lines hi dikhayega

    df -h | sort -rk5 | head -5
}


# Memory usage check karne wala function
memory_usage() {

    # free -h
    # RAM aur swap memory human readable format me show karta hai
    free -h
}


# Top CPU consuming processes dikhane wala function
top_processes() {

    # ps -eo
    # Running processes show karta hai

    # pid   -> Process ID
    # ppid  -> Parent Process ID
    # cmd   -> Command name
    # %mem  -> Memory usage
    # %cpu  -> CPU usage

    # --sort=-%cpu
    # CPU usage ke according descending order me sort

    # head -6
    # Top 6 lines show

    ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -6
}


# Main function
# Yaha se pura flow control ho raha hai
main() {

    # Header print karega
    print_header "SYSTEM INFO"

    # System info function call
    system_info


    print_header "UPTIME"

    # Uptime function call
    uptime_info


    print_header "DISK USAGE"

    # Disk usage function call
    disk_usage


    print_header "MEMORY USAGE"

    # Memory usage function call
    memory_usage


    print_header "TOP CPU PROCESSES"

    # Top process function call
    top_processes
}


# Script execution yahi se start hoga
# main function ko call kar rahe hain
main
