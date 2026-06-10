Git Commands Notes (Days 22–25)

1. Setup Commands

1.1 git init

Purpose:

* Start Git tracking in current folder
* Create .git folder

Command:

git init

---

1.2 git clone

Purpose:

* Copy/download GitHub repository to local machine

Command:

git clone repo-url

---

1.3 git config

Purpose:

* Set Git username and email

Commands:

git config --global user.name "Anuj"

git config --global user.email "[anuj@gmail.com](mailto:anuj@gmail.com)"

==================================================

2. Basic Workflow Commands

2.1 git status

Purpose:

* Show current repository status

Shows:

* Modified files
* Staged files
* Untracked files

Command:

git status

---

2.2 git add

Purpose:

* Send changes to staging area

Commands:

git add file-name

git add .

---

2.3 git commit

Purpose:

* Save snapshot of changes

Command:

git commit -m "message"

---

2.4 git log

Purpose:

* Show commit history

Commands:

git log

git log --oneline

---

2.5 git diff

Purpose:

* Compare file changes

Shows:

* Added lines
* Removed lines

Command:

git diff

==================================================

3. Branching Commands

3.1 git branch

Purpose:

* Create branch
* List branches

Commands:

git branch

git branch feature-login

---

3.2 git switch

Purpose:

* Switch branch
* Create and switch branch

Commands:

git switch main

git switch -c test

---

3.3 git checkout

Purpose:

* Old command for branch switching
* Restore files

Command:

git checkout main

==================================================

4. Remote Commands

4.1 git push

Purpose:

* Upload local commits to GitHub

Command:

git push

---

4.2 git pull

Purpose:

* Download and merge latest GitHub changes

Command:

git pull

---

4.3 git fetch

Purpose:

* Download latest changes only
* No automatic merge

Command:

git fetch

==================================================

5. Merge and Rebase

5.1 git merge

Purpose:

* Combine two branches

Command:

git merge branch-name

---

5.2 git rebase

Purpose:

* Create clean linear history

Command:

git rebase main

==================================================

6. Advanced Commands

6.1 git stash

Purpose:

* Temporarily save changes

Commands:

git stash

git stash pop

---

6.2 git cherry-pick

Purpose:

* Copy one specific commit to another branch

Command:

git cherry-pick commit-id

---

6.3 git reset

Purpose:

* Move commit history backward

Types:

* --soft → remove commit, keep staged changes
* --mixed → remove commit, keep unstaged changes
* --hard → remove commit and delete changes

Commands:

git reset --soft HEAD~1

git reset --mixed HEAD~1

git reset --hard HEAD~1

---

6.4 git revert

Purpose:

* Undo commit safely
* Create opposite commit
* Keep history safe

Command:

git revert commit-id

---

6.5 git reflog

Purpose:

* Show hidden Git history
* Recover deleted/reset commits

Command:

git reflog

==================================================

Important Difference

git reset

* Removes commit from history
* Best for local changes

git revert

* Keeps history safe
* Best for pushed/shared commits

