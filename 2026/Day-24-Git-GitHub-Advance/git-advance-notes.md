Day 24 - Advanced Git Notes

Topics Covered

- Git Merge
- Fast Forward Merge
- Merge Commit
- Merge Conflict
- Git Rebase
- Squash Merge
- Git Stash
- Git Cherry Pick

---

1. Git Merge

What is Git Merge?

Git merge is used to combine one branch into another branch.

---

Create Feature Branch

git switch main

git switch -c feature-login

---

Add Commits

echo "login page" > login.txt

git add .

git commit -m "added login page"

echo "login validation" >> login.txt

git add .

git commit -m "added login validation"

---

Merge Branch into Main

git switch main

git merge feature-login

---

Check Git History

git log --oneline --graph --all

---

Fast Forward Merge

What is Fast Forward Merge?

Fast forward merge happens when:

- main branch has no new commits
- feature branch is ahead of main

Git simply moves the pointer forward.

---

Example Flow

main

A --- B

feature-login

A --- B --- C --- D

After merge:

main

A --- B --- C --- D

No extra merge commit created.

---

Merge Commit

When Does Merge Commit Happen?

Merge commit happens when:

- both branches have different commits
- histories are different

---

Example

Create Branch

git switch -c feature-signup

---

Add Commit in Feature Branch

echo "signup page" > signup.txt

git add .

git commit -m "added signup page"

---

Add Commit in Main Branch

git switch main

echo "main update" > main.txt

git add .

git commit -m "updated main branch"

---

Merge Feature Branch

git merge feature-signup

---

Observation

Git creates a merge commit because both branches moved separately.

---

Merge Conflict

What is Merge Conflict?

Merge conflict happens when:

- same file
- same line
- modified differently in two branches

Git gets confused which change to keep.

---

Example

Main Branch

hello devops

Feature Branch

hello docker

---

Conflict Message

CONFLICT (content): Merge conflict in file.txt

---

Resolve Conflict

Step 1

Open file

---

Step 2

Remove conflict markers

<<<<<<< HEAD
hello devops
=======
hello docker
>>>>>>> feature

---

Step 3

Keep correct content

hello devops and docker

---

Step 4

Add and commit

git add .

git commit

---

2. Git Rebase

What is Rebase?

Rebase moves feature branch commits on top of another branch.

It creates a clean linear history.

---

Create Branch

git switch -c feature-dashboard

---

Add Commits

echo "dashboard ui" > dashboard.txt

git add .

git commit -m "added dashboard ui"

echo "dashboard api" >> dashboard.txt

git add .

git commit -m "added dashboard api"

---

Add Commit on Main

git switch main

echo "main improvement" > update.txt

git add .

git commit -m "main improved"

---

Rebase Feature Branch

git switch feature-dashboard

git rebase main

---

Check History

git log --oneline --graph --all

---

Observation

History becomes clean and linear.

---

Rebase Conflict Commands

Continue Rebase

git add .

git rebase --continue

---

Abort Rebase

git rebase --abort

---

Difference Between Merge and Rebase

Merge| Rebase
Creates merge commit| No merge commit
Non-linear history| Linear history
Safe for teams| Can rewrite history
Preserves original history| Cleaner history

---

Why Rebase Should Not Be Used on Shared Branches?

Because rebase changes commit history and commit hashes.

Other developers can face problems after pulling changes.

---

When to Use Merge vs Rebase?

Use Merge

- team collaboration
- shared branches
- preserve history

---

Use Rebase

- local feature branches
- clean history
- before pull request

---

3. Squash Merge

What is Squash Merge?

Squash merge combines multiple commits into one commit.

---

Create Branch

git switch -c feature-profile

---

Add Multiple Small Commits

git commit -m "profile page added"

git commit -m "fixed typo"

git commit -m "updated css"

git commit -m "formatted code"

---

Squash Merge

git switch main

git merge --squash feature-profile

---

Commit Squashed Changes

git commit -m "added profile feature"

---

Observation

All small commits become one clean commit.

---

Regular Merge Comparison

Create Branch

git switch -c feature-settings

---

Add Commits

git commit -m "settings ui"

git commit -m "settings api"

---

Merge Normally

git switch main

git merge feature-settings

---

Observation

All commits remain separate.

---

Squash Merge Advantages

- clean history
- easier review
- fewer commits

---

Squash Merge Disadvantages

- original commit history lost
- debugging becomes harder

---

4. Git Stash

What is Git Stash?

Git stash temporarily saves uncommitted changes.

Useful when switching branches quickly.

---

Make Changes

echo "work in progress" >> app.txt

---

Stash Changes

git stash

---

Stash with Message

git stash push -m "working on login ui"

---

List Stashes

git stash list

---

Apply Stash

git stash pop

---

Apply Specific Stash

git stash apply stash@{0}

---

Difference Between Pop and Apply

git stash pop| git stash apply
Applies and removes stash| Applies but keeps stash
Used once| Reusable stash

---

Real World Use of Stash

Used when:

- urgent bug fix comes
- task switching needed
- incomplete work exists

---

5. Git Cherry Pick

What is Cherry Pick?

Cherry-pick copies one specific commit from one branch to another.

---

Create Branch

git switch -c feature-hotfix

---

Add Commits

git commit -m "first fix"

git commit -m "important hotfix"

git commit -m "third update"

---

Find Commit Hash

git log --oneline

Example:

a1b2c3 first fix
d4e5f6 important hotfix
g7h8i9 third update

---

Cherry Pick Specific Commit

git switch main

git cherry-pick d4e5f6

---

Observation

Only selected commit gets copied.

---

Problems with Cherry Pick

- duplicate commits
- merge conflicts
- confusing history

---

Important Commands Revision

Merge

git merge branch-name

---

Rebase

git rebase main

---

Continue Rebase

git rebase --continue

---

Abort Rebase

git rebase --abort

---

Squash Merge

git merge --squash branch-name

---

Stash

git stash

---

Stash List

git stash list

---

Stash Pop

git stash pop

---

Cherry Pick

git cherry-pick commit-hash

---

Git History Visualization

git log --oneline --graph --all

---

Final Understanding

Merge

Combines branches together.

---

Rebase

Creates clean linear history.

---

Squash Merge

Converts multiple commits into one commit.

---

Stash

Temporarily saves unfinished work.

---

Cherry Pick

Copies one specific commit.

---

DevOps Engineer Perspective

In real companies:

- Developers work on feature branches
- Merge and pull requests are used daily
- Rebase keeps history clean
- Squash merge keeps repositories readable
- Stash helps during urgent task switching
- Cherry-pick is useful for production hotfixes

These Git concepts are very important for DevOps engineers and interviews.
