# Linux Architecture Notes

## What is Linux?

Linux is an open-source operating system that manages computer hardware and software resources.

Examples:
- Ubuntu
- Kali Linux
- Red Hat

Hardware resources:
CPU, RAM, Devices

Software resources:
Applications, Processes, Services

---

# Linux Architecture

Linux architecture is mainly divided into two parts:

1. User Space - (Applications + Utilities + Shell = User Space)
2. Kernel Space - (kernal)

Kernel is the core and heart of Linux.

---

# Linux Architecture Diagram

+----------------------------------+
|   Applications & Utilities       |
| Chrome, VS Code, Commands etc.   |
+----------------------------------+
                ↓
+----------------------------------+
|              Shell               |
|      Bash, Zsh etc.              |
+----------------------------------+
                ↓
+----------------------------------+
|             Kernel               |
|      Heart/Core of Linux         |
+----------------------------------+
                ↓
+----------------------------------+
|            Hardware              |
|     CPU, RAM, Disk, Devices      |
+----------------------------------+


---

# User Space

User Space contains:
- Applications
- Utilities
- Shell

Examples:
- Chrome
- VS Code
- Terminal

- Applications cannot directly access hardware.
- Applications send requests to the kernel through the shell.

---

# Important Point About User Space

User Space is not shown as a separate circle in the diagram.

Actually:

- Applications + Utilities + Shell = User Space
- These components together form the User Space.


# Kernel Space

Kernel is the core part of Linux.

Functions of Kernel:
- CPU Management
- Memory Management
- Device Management
- Process Management

Kernel acts as a bridge between hardware and software.

---

# Boot Process

Booting means starting the computer.

Boot Process:
1. Power ON
2. Linux loads
3. Kernel starts
4. systemd starts
5. Services and applications start

---

# systemd

systemd is a service manager in Linux.

Functions:
- Start services
- Stop services
- Restart services
- Manage logs

---

# Process

A running program is called a process.

Examples:
- Chrome running
- VS Code running

---

# Process States

- Running → Process is executing
- Sleeping → Process is waiting
- Stopped → Process is paused
- Zombie → Process finished but not fully removed

---

# Complete Linux Flow

Power ON
    ↓
Boot Process → (Starting the computer)
    ↓
Kernel Starts
    ↓
systemd Starts
    ↓
Services Start
    ↓
Applications Run


---

# Short Revision

| Topic        | Meaning 
|              |
| Linux        | Operating System 
| User Space   | Area where applications run 
| Kernel Space | Area where kernel runs 
| Kernel       | Heart/Core of Linux 
| Booting      | Starting the computer 
| systemd      | Service manager 
| Process      | Running program 

---

# Important Point

User → Application → Kernel → Hardware

