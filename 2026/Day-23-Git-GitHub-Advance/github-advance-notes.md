Day 23 – Git Branching & Working with GitHub

1. What is Branch?

- Branch = separate workspace
- Main code safe rehta hai
- New feature ya testing ke liye use hota hai

Example:

git branch feature-1

---

2. Why Use Branch?

- Main branch break nahi hoti
- Alag se safely kaam kar sakte hain
- Team me multiple log kaam kar sakte hain

---

3. What is HEAD?

- HEAD = current branch pointer

Check:

git branch

Example Output:

* main

"*" = current branch

---

4. List All Branches

git branch

---

5. Create New Branch

git branch feature-1

---

6. Switch Branch

git switch feature-1

---

7. Create + Switch Together

git switch -c feature-2

---

8. Difference Between switch and checkout

Old Method

git checkout feature-1

---

New Method

git switch feature-1

switch is:

- easy
- safe
- modern

---

9. Create Commit in Feature Branch

Create file:

echo "Feature work" > feature.txt

Add:

git add .

Commit:

git commit -m "Added feature work"

---

10. Verify Commit Not Present in Main

Switch:

git switch main

Check files:

ls

Result:

- "feature.txt" nahi dikhegi
- Because commit only exists in feature branch

---

11. Delete Branch

git branch -d feature-2

---

12. Add Remote Repository

git remote add origin <repo-url>

Example:

git remote add origin https://github.com/username/devops-git-practice.git

---

13. Check Remote

git remote -v

---

14. Push Main Branch

git push -u origin main

---

15. Push Feature Branch

git push -u origin feature-1

---

16. Pull Latest Changes

git pull origin main

---

17. Difference Between fetch and pull

fetch

- only downloads changes

git fetch

---

pull

- download + merge

git pull

---

18. Clone Repository

git clone <repo-url>

Example:

git clone https://github.com/kubernetes/kubernetes.git

---

19. What is Fork?

- Fork = GitHub copy of someone else's repo

Example:

Original Repo -> Your Fork

---

20. Difference Between Clone and Fork

Clone

- local copy
- Git command

git clone <repo-url>

---

Fork

- GitHub copy
- GitHub feature

---

21. Add Upstream in Forked Repo

Add upstream:

git remote add upstream <original-repo-url>

Example:

git remote add upstream https://github.com/original-user/project.git

---

22. Verify Upstream

git remote -v

Output:

origin
upstream

---

23. Fetch Latest Changes from Original Repo

git fetch upstream

---

24. Merge Original Repo Updates

git merge upstream/main

---

25. Push Updated Code to Your Fork

git push origin main

---

26. Important Concepts

origin

- your GitHub repo

---

upstream

- original repo

---

fetch

- only download

---

pull

- download + merge

---

clone

- local copy

---

fork

- GitHub copy

---

switch

- change branch

---

checkout

- old command

---

27. Most Important Commands Revision

Branch

git branch
git branch feature-1
git switch feature-1
git switch -c feature-2
git branch -d feature-2

---

Commit

git add .
git commit -m "message"

---

Remote

git remote -v
git remote add origin <repo-url>
git remote add upstream <repo-url>

---

Push & Pull

git push -u origin main
git push -u origin feature-1
git pull origin main
git fetch upstream

---

Merge

git merge upstream/main

---

Clone

git clone <repo-url>
