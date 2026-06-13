[6:51 pm, 13/06/2026] anujpratapsingh9752: Day 28 – Revision Day: Everything from Day 1 to Day 27
Task
You've covered a lot of ground in 27 days — DevOps fundamentals, Linux deep dives, Shell scripting, Python basics, Git & GitHub, and even your developer branding. Today, stop and revise. No new concepts. Just solidify what you've learned.

The goal is to identify gaps, revisit topics you struggled with, and make sure you can confidently explain and use everything covered so far.

What You've Covered So Far
Days	Topic	Key Concepts
1	DevOps & Cloud Intro	What is DevOps, SDLC, Cloud basics
2–7	Linux Fundamentals	Architecture, commands, processes, systemd, file system hierarchy, troubleshooting, text files
8	Cloud Server Setup	Docker, Nginx, web deployment
9–11	Users, Permissions & Ownership	User/group …
[7:58 pm, 13/06/2026] anujpratapsingh9752: Ye tumhare level aur aaj ki practice ke according perfect rahega 👇

Day 28 - Revision Day (Day 1 to Day 27)

What I Revised Today

Today I revised all the important topics covered from Day 1 to Day 27 including Linux, Shell Scripting, Git & GitHub, Networking, LVM, and GitHub CLI.

I practiced concepts by answering questions from memory instead of watching videos again. This helped me identify weak areas and improve my understanding.

---

Topics Revised

Linux

- File permissions and ownership
- chmod, chown, chgrp
- Process vs Service
- systemctl commands
- DNS basics
- Port checking commands
- Cron jobs
- Linux troubleshooting basics

Shell Scripting

- Variables and arguments
- set -euo pipefail
- Script permissions
- Basic automation concepts

Git & GitHub

- git fetch vs git pull
- git reset vs git revert
- Branching workflow
- Feature branches
- Merge concepts
- GitHub workflow basics

LVM

- Physical Volume (PV)
- Volume Group (VG)
- Logical Volume (LV)
- Storage management using LVM

---

Quick Revision Questions Practiced

chmod 755

- Owner gets read, write, execute
- Group gets read and execute
- Others get read and execute

Difference Between Process and Service

- Process is a running program
- Service is a system-managed process controlled by systemd

Port 8080 Check

sudo lsof -i :8080
ss -tulnp | grep 8080

set -euo pipefail

- Stops script on errors
- Prevents undefined variables
- Detects pipeline failures

git revert vs git reset --hard

- git revert creates a new commit to undo changes safely
- git reset --hard removes commits and changes completely

git fetch vs git pull

- git fetch downloads changes only
- git pull downloads and merges changes

Cron Job Example

0 3 * * * /home/anuj/backup.sh

Runs the script daily at 3 AM.

---

Weak Areas I Need to Revisit

- Cron syntax
- Git reset types
- Process vs Service differences
- Advanced Git workflow concepts

---

Teach Back Section

Why Git Branching is Important

## Why Git Branching is Important

Branching is one of the most important concepts in GitHub. Developers create separate branches for new features and bug fixes so the main branch is not affected. The main branch keeps running stable code while developers work safely in their own branches. After the feature is completed and tested properly, it is merged into the main branch. This helps prevent production issues and keeps the project stable.

---

Final Thoughts

This revision day helped me understand which topics I know well and which topics need more practice. I realized that practical practice and explaining concepts from memory improves understanding much more than only watching tutorials.
