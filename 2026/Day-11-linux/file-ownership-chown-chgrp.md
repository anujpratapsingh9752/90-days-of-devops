Day 11 – File Ownership Challenge (chown & chgrp)

> Learning Linux file ownership, groups, and recursive permission management using chown and chgrp.




---

1. 📌 Objective

In this challenge, I learned:

How file ownership works in Linux

How to change file owners using chown

How to change file groups using chgrp

How to change both owner and group together

How recursive ownership works using the -R flag



---

Objective

In this challenge, we learned:

How file ownership works in Linux

How to change file owners

How to change file groups

How to apply ownership changes recursively


Commands used:

ls -l

chown

chgrp

groupadd

useradd



---

2. Understanding File Ownership

Command

ls -l

Example Output

-rw-r--r-- 1 ubuntu ubuntu 0 May 27 notes.txt

Breakdown

Part	Meaning

-rw-r--r--	File permissions
1	Link count
ubuntu	Owner/User
ubuntu	Group
0	File size
May 27	Modified date
notes.txt	File name



---

2.1 Difference Between Owner and Group

Owner

The user who owns the file

Usually has full control over the file


Group

A collection of users

Group members can share access to files


Example:

professor:heist-team

Part	Meaning

professor	Owner/User
heist-team	Group



---

3. Basic chown Operations

A. Create File

touch devops-file.txt

B. Check Ownership

ls -l devops-file.txt

C. Create Users

sudo useradd tokyo
sudo useradd berlin

D. Change Owner to tokyo

sudo chown tokyo devops-file.txt

E. Verify

ls -l devops-file.txt

F. Change Owner to berlin

sudo chown berlin devops-file.txt


---

4. Basic chgrp Operations

A. Create File

touch team-notes.txt

B. Create Group

sudo groupadd heist-team

C. Change Group

sudo chgrp heist-team team-notes.txt

E. Verify

ls -l team-notes.txt


---

5. Change Owner and Group Together

A. Create File

touch project-config.yaml

Create User (if needed)

sudo useradd professor

C. Change Owner + Group

sudo chown professor:heist-team project-config.yaml

D. Syntax

sudo chown owner:group filename


---

6. Recursive Ownership

A. Create Directory Structure

mkdir -p heist-project/vault
mkdir -p heist-project/plans

touch heist-project/vault/gold.txt
touch heist-project/plans/strategy.conf

B. Create Group

sudo groupadd planners

C. Recursive Ownership Change

sudo chown -R professor:planners heist-project/

D. Meaning of -R

-R means recursive.

This means:

The main directory

All files inside it

All subdirectories


will have their ownership changed.

E. Verify

ls -lR heist-project/


---

7. Practice Challenge

C. Create Users

sudo useradd tokyo
sudo useradd berlin
sudo useradd nairobi

B. Create Groups

sudo groupadd vault-team
sudo groupadd tech-team

Create Directory

mkdir bank-heist

A. Create Files

touch bank-heist/access-codes.txt
touch bank-heist/blueprints.pdf
touch bank-heist/escape-plan.txt

E. Set Ownership

access-codes.txt

sudo chown tokyo:vault-team bank-heist/access-codes.txt

blueprints.pdf

sudo chown berlin:tech-team bank-heist/blueprints.pdf

escape-plan.txt

sudo chown nairobi:vault-team bank-heist/escape-plan.txt

E. Verify

ls -l bank-heist/


---

8. Important Commands Summary

View Ownership

ls -l filename

Change Owner Only

sudo chown newowner filename

Change Group Only

sudo chgrp newgroup filename

Change Owner + Group

sudo chown owner:group filename

Recursive Ownership

sudo chown -R owner:group directory/


---

9. Common Errors

Permission Denied

Use:

sudo

User Does Not Exist

Create:

sudo useradd username

Group Does Not Exist

Create:

sudo groupadd groupname


---

10. What I Learned

1. Every file in Linux has an owner and a group.


2. chown can change both owner and group.


3. The -R flag applies ownership changes recursively.




---

11. Why This Matters in DevOps

File ownership is important for:

Application deployments

Docker containers

Shared team access

Log management

CI/CD pipelines

Production servers



---

12. Quick Memory Trick

owner:group

Left side = owner/user

Right side = group
