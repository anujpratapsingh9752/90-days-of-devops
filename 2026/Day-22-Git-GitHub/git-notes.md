Day 22 – Introduction to Git Notes

Git Basics

1. What is Git

→ Git is a Version Control System
→ Git tracks file and project changes
→ Git stores project history
→ Git helps restore old versions
→ Git is heavily used in DevOps and software development

Example:
If project breaks after changes, Git can restore older working version

---

2. Git Workflow

Working Directory
↓
git add
↓
Staging Area
↓
git commit
↓
Repository

Meaning:

→ Working Directory
→ Current editable files

→ Staging Area
→ Temporary waiting area before commit

→ Repository
→ Permanent saved history

---

Git Setup and Initialization

1. Check Git Version

Command:
git --version

Use:
Check whether Git installed or not

---

2. Check Git Configuration

Command:
git config --list

Use:
Show configured username and email

Your Configuration:
user.name=anuj
user.email=anujpratapsingh9752@gmail.com

---

3. Create Practice Folder

Command:
mkdir day-22-git-practice

Use:
Create Git practice project folder

---

4. Enter Project Folder

Command:
cd day-22-git-practice

Use:
Move inside project directory

---

5. Initialize Git Repository

Command:
git init

Use:
Convert normal folder into Git repository

Example Output:
Initialized empty Git repository

Meaning:
Git tracking started

---

6. Show Hidden Files

Command:
ls -la

Use:
Show hidden files and folders

Important:
.git is hidden Git folder

---

7. What is .git Folder

→ .git stores complete Git repository data
→ Stores commits, branches, configuration, logs and history

If .git deleted:
→ Repository history lost
→ Git tracking removed

---

File Creation and Tracking

1. Create Markdown Files

Commands:
touch git-commands.md
touch day-22-notes.md

Use:
Create notes files

---

2. Check Repository Status

Command:
git status

Use:
Show repository condition

Git status shows:
→ Untracked files
→ Modified files
→ Staged files
→ Commit status

Important:
git status is most important Git command

---

3. Untracked Files

Meaning:
Git can see files
But Git is not tracking them yet

Example Output:
Untracked files:
git-commands.md

---

File Editing

1. Open File Using Nano

Command:
nano git-commands.md

Use:
Edit markdown file

---

2. Save Nano File

Shortcut:
CTRL + O
Enter
CTRL + X

Meaning:
Save and exit nano editor

---

Staging and Commit

1. Stage File

Command:
git add git-commands.md

Use:
Move file to staging area

---

2. Stage All Files

Command:
git add .

Use:
Stage all changed files

Dot Meaning:
Everything in current directory

---

3. Staging Area Meaning

→ Temporary area before commit
→ Git lets us choose what to commit

---

4. Check Staged Files

Command:
git status

Example Output:
Changes to be committed

Meaning:
Files ready for commit

---

5. Commit Changes

Command:
git commit -m "Added initial Git notes"

Use:
Save snapshot permanently

Important:
-m means commit message

---

6. Good Commit Message Examples

Added Git workflow notes

Added Git commands reference

Updated Git practice notes

---

7. Bad Commit Message Examples

update

hello

fix

---

Viewing Changes and History

1. View Full Commit History

Command:
git log

Use:
Show detailed commit history

Shows:
→ Commit ID
→ Author
→ Date
→ Commit message

---

2. Compact History

Command:
git log --oneline

Use:
Show short commit history

Example:
a1b2c3 Added Git notes

---

3. View File Changes

Command:
git diff

Use:
Show changes after last commit

Important:
Useful before commit

---

Difference Between git add and git commit

git add
→ Prepare changes for commit

git commit
→ Permanently save staged changes

Simple Understanding:

git add
= Ready karna

git commit
= Permanently save karna

---

Difference Between Important Areas

1. Working Directory

→ Current editable files

---

2. Staging Area

→ Prepared changes before commit

---

3. Repository

→ Permanent Git history

---

Practical Workflow Performed Today

1. Created project folder

Command:
mkdir day-22-git-practice

---

2. Entered folder

Command:
cd day-22-git-practice

---

3. Initialized Git repository

Command:
git init

---

4. Created markdown files

Commands:
touch git-commands.md
touch day-22-notes.md

---

5. Checked Git status

Command:
git status

---

6. Added files to staging area

Command:
git add .

---

7. Created first commit

Command:
git commit -m "Added initial Git notes"

---

8. Modified files again

Command:
nano git-commands.md

---

9. Checked changes

Command:
git diff

---

10. Created second commit

Commands:
git add .
git commit -m "Added workflow commands"

---

11. Viewed history

Command:
git log --oneline

---

GitHub Push Commands

1. Check Current Branch

Command:
git branch

---

2. Add Remote Repository

Command:
git remote add origin <repository-url>

Use:
Connect local repository with GitHub

---

3. Push Code to GitHub

Command:
git push -u origin main

Use:
Upload commits to GitHub

---

4. Push Future Changes

Command:
git push

Use:
Upload latest commits

---

Most Important Commands Practiced Today

git init

git status

git add

git commit

git log

git log --oneline

git diff

git push

ls -la

nano

touch

---

Final Revision

→ Git tracks project changes
→ git status shows repository condition
→ git add stages files
→ git commit saves snapshot permanently
→ git diff shows modifications
→ git log shows history
→ .git stores repository data
→ git push uploads code to GitHub
