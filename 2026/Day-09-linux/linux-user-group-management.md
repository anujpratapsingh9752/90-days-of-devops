Day 09 Notes – Linux User & Group Management

A. User Management

- Linux is a multi-user operating system.
- Each user gets a separate account.
- Users can log in and access the system.
- Every user has:
  - Username
  - User ID (UID)
  - Home directory
  - Default shell

Create User

bash
sudo useradd -m username


Example:

bash
sudo useradd -m tokyo


Set Password

bash
sudo passwd tokyo


Verify User

bash
cat /etc/passwd


Important Points

- useradd creates a new user.
- -m creates home directory automatically.
- Passwords are stored in encrypted form.
- User information is stored in:
  
bash
/etc/passwd


- Passwords are stored in:

bash
/etc/shadow


---

B. Group Management

- Groups are used to manage multiple users.
- Groups help in teamwork and shared access.
- One user can belong to multiple groups.

Create Group

bash
sudo groupadd developers


Verify Groups

bash
cat /etc/group


Important Points

- groupadd creates a new group.
- Group details are stored in:

bash
/etc/group


- Groups simplify permission management.
- Shared resources can be controlled using groups.

---

C. Assign Users to Groups

Add User to Group

bash
sudo usermod -aG developers tokyo


Add User to Multiple Groups

bash
sudo usermod -aG developers,admins berlin


Verify Group Membership

bash
groups tokyo


Important Points

- usermod modifies existing users.
- -aG adds user to supplementary groups.
- One user can belong to multiple groups.
- Group membership controls access to shared resources.

---

D. Shared Directory & Permissions

Create Shared Directory

bash
sudo mkdir -p /opt/dev-project


Change Group Ownership

bash
sudo chgrp developers /opt/dev-project


Set Permissions

bash
sudo chmod 775 /opt/dev-project


Verify Permissions

bash
ls -ld /opt/dev-project


Permission Breakdown

| Number | Meaning |
|---|---|
| 7 | rwx |
| 7 | rwx |
| 5 | r-x |

Meaning of rwx

| Symbol | Meaning |
|---|---|
| r | read |
| w | write |
| x | execute/access |

Important Points

- chmod changes permissions.
- chgrp changes group ownership.
- 775 gives:
  - Full access to owner
  - Full access to group
  - Read and execute access to others
- Shared directories allow teamwork.

---

E. Testing as Another User

Create File as Another User

bash
sudo -u tokyo touch /opt/dev-project/file.txt


Important Points

- sudo -u runs command as another user.
- Used to test permissions.
- Helps verify group access.

---

F. Team Workspace

Create Team Group

bash
sudo groupadd project-team


Add Members

bash
sudo usermod -aG project-team nairobi
sudo usermod -aG project-team tokyo


Create Workspace

bash
sudo mkdir -p /opt/team-workspace


Set Group

bash
sudo chgrp project-team /opt/team-workspace


Set Permissions

bash
sudo chmod 775 /opt/team-workspace


Important Points

- Team workspace is used for collaboration.
- Group ownership allows shared access.
- Permissions control security.

---

G. Important Linux Files

| File | Purpose |
|---|---|
| /etc/passwd | User information |
| /etc/group | Group information |
| /etc/shadow | Encrypted passwords |

---

H. Important Commands

| Command | Purpose |
|---|---|
| useradd | Create user |
| passwd | Set password |
| groupadd | Create group |
| usermod | Modify user |
| groups | Check groups |
| mkdir | Create directory |
| chmod | Change permissions |
| chgrp | Change group owner |
| touch | Create file |
| ls -l | Check permissions |
| sudo -u | Run as another user |

---

I. Key Learnings

- Learned Linux user management.
- Learned group management.
- Learned Linux permissions.
- Learned shared directory setup.
- Learned group ownership.
- Learned collaborative access management.
- Learned how Linux security works.
