Day 24 – Advanced Git: Merge, Rebase, Stash & Cherry Pick

What I Learned Today

Today I learned:

- Git Merge
- Fast-forward merge
- Merge commit
- Merge conflict
- Git Rebase
- Squash Merge
- Git Stash
- Cherry Pick

These are very important Git concepts used in real DevOps and software development workflows.

---

1. Git Merge

What is Merge?

Git merge is used to combine one branch into another branch.

Example:

git merge feature-login

This merges "feature-login" branch into the current branch.

---

Fast-Forward Merge

What is Fast-Forward Merge?

Fast-forward merge happens when the main branch has no new commits after creating the feature branch.

Git simply moves the branch pointer forward.

---

Example

Create Branch

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

Merge into Main

git switch main
git merge feature-login

---

Check History

git log --oneline --graph --all

---

Observation

Git performed a fast-forward merge because main branch did not move ahead.

---

Merge Commit

When Does Git Create Merge Commit?

Git creates a merge commit when:

- both branches have different commits
- main branch also moved ahead

---

Example

Create Branch

git switch -c feature-signup

---

Add Commit

echo "signup page" > signup.txt
git add .
git commit -m "added signup page"

---

Add Commit on Main

git switch main

echo "main update" > main.txt
git add .
git commit -m "main updated"

---

Merge

git merge feature-signup

---

Observation

Git created a merge commit because both branches had different histories.

---

Merge Conflict

What is Merge Conflict?

Merge conflict happens when:

- same file
- same line
- edited differently in two branches

Git cannot decide which change to keep.

---

Example

Main Branch

hello devops

Feature Branch

hello docker

---

Merge Conflict Message

CONFLICT (content): Merge conflict in file.txt

---

Resolve Conflict

1. Open file
2. Remove conflict markers
3. Keep correct code
4. Save file

---

Final Commands

git add .
git commit

---

2. Git Rebase

What is Rebase?

Rebase moves feature branch commits on top of another branch.

It creates a clean linear history.

---

Example

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

Main Branch New Commit

git switch main

echo "main improvement" > update.txt
git add .
git commit -m "main improved"

---

Rebase

git switch feature-dashboard

git rebase main

---

Check History

git log --oneline --graph --all

---

Observation

History became clean and linear.

---

Rebase Conflict

If conflict happens:

git add .
git rebase --continue

Abort rebase:

git rebase --abort

---

What Does Rebase Actually Do?

Rebase takes commits from one branch and replays them on top of another branch.

---

Difference Between Merge and Rebase

Merge| Rebase
Creates merge commit| No merge commit
History becomes non-linear| History becomes linear
Safe for shared branches| Dangerous on shared branches
Preserves exact history| Rewrites history

---

Why We Should Not Rebase Shared Commits?

Because rebase changes commit history and hashes.

Other developers can face conflicts and broken history.

---

When to Use Rebase vs Merge?

Use Rebase

- before merging feature branch
- for clean history
- local branches

Use Merge

- shared branches
- team collaboration
- preserving original history

---

3. Squash Merge

What is Squash Merge?

Squash merge combines multiple commits into one single commit.

---

Example

Create Branch

git switch -c feature-profile

---

Multiple Small Commits

git commit -m "profile page added"
git commit -m "fixed typo"
git commit -m "updated css"
git commit -m "formatted code"

---

Squash Merge

git switch main

git merge --squash feature-profile

---

Commit Changes

git commit -m "added profile feature"

---

Observation

All commits became one commit.

---

Regular Merge Comparison

Create Branch

git switch -c feature-settings

---

Add Commits

git commit -m "settings ui"
git commit -m "settings api"

---

Regular Merge

git switch main
git merge feature-settings

---

Observation

All commits remained separate.

---

When to Use Squash Merge?

Use squash merge when:

- commits are messy
- many typo fixes exist
- clean history is needed

---

Trade-Off of Squashing

Advantages

- clean history
- easier review
- fewer commits

Disadvantages

- original commit history lost
- debugging becomes harder

---

4. Git Stash

What is Git Stash?

Git stash temporarily saves uncommitted changes.

Useful when we need to switch branches quickly.

---

Example

Make Changes

echo "work in progress" >> app.txt

---

Stash Changes

git stash

---

Stash With Message

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

Difference Between Stash Pop and Apply

git stash pop| git stash apply
Applies and removes stash| Applies but keeps stash
Temporary use| Reusable stash

---

Real World Use of Stash

Used when:

- urgent bug fix comes
- switching tasks quickly
- unfinished work exists

---

5. Cherry Pick

What is Cherry Pick?

Cherry-pick copies a specific commit from one branch to another.

---

Example

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

Cherry Pick Commit

git switch main

git cherry-pick d4e5f6

---

Observation

Only selected commit was copied.

---

When to Use Cherry Pick?

Used when:

- only one fix is needed
- hotfix needed in production
- specific feature required

---

Problems with Cherry Picking

- duplicate commits
- conflicts
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

Visualize Git History

git log --oneline --graph --all

---

Final Understanding

Merge

Combine branches together.

---

Rebase

Create clean linear history.

---

Squash Merge

Convert multiple commits into one commit.

---

Stash

Temporarily save unfinished work.

---

Cherry Pick

Copy one specific commit.

---

DevOps Engineer Perspective

In real companies:

- Merge is used in Pull Requests
- Rebase is used for clean history
- Squash merge keeps repositories clean
- Stash helps during urgent task switching
- Cherry-pick is useful for production hotfixes

These concepts are very important for DevOps engineers and Git interviews.
