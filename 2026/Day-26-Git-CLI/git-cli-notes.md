Day 26 - GitHub CLI ("gh") Notes

What I Learned Today

Today I learned how to use GitHub from the terminal using GitHub CLI ("gh").

Before this, I used GitHub mostly from the browser.
Now I understand how to:

- login to GitHub from terminal
- create repositories
- clone repositories
- push code
- view repositories
- manage GitHub from terminal

---

What is GitHub CLI ("gh")?

GitHub CLI is a command line tool that allows us to manage GitHub directly from the terminal.

Using "gh", we can:

- create repos
- create issues
- create pull requests
- manage workflows
- open repos
- use GitHub APIs

without opening the browser.

---

Installation

Install GitHub CLI

sudo apt update
sudo apt install gh -y

Purpose

- "apt update" → refresh package list
- "apt install gh" → install GitHub CLI

---

Check Version

gh --version

Purpose

Check whether GitHub CLI is installed properly.

---

Login to GitHub

gh auth login

Purpose

Connect terminal with GitHub account.

---

Check Login Status

gh auth status

Purpose

Check which GitHub account is currently logged in.

---

Logout

gh auth logout

Purpose

Remove GitHub account access from terminal.

---

Repository Management

Create Repository

gh repo create day-26-gh-cli --public --clone --add-readme

Explanation

- "gh repo create" → create GitHub repo
- "--public" → public repository
- "--clone" → automatically clone locally
- "--add-readme" → create README.md file

---

View Repository

gh repo view

Purpose

View repository details from terminal.

---

Open Repository in Browser

gh repo view --web

Purpose

Open repository directly in browser.

---

List Repositories

gh repo list

Purpose

Show all repositories from GitHub account.

---

Clone Repository

gh repo clone owner/repo-name

Purpose

Clone GitHub repository using GitHub CLI.

---

Git Workflow Practice

Create Branch

git switch -c feature-login

Purpose

Create new branch for safe development.

---

Create File

touch notes.txt

Purpose

Create empty file.

---

Add Content

echo "GitHub CLI practice" >> notes.txt

Purpose

Add text into file.

---

Check Git Status

git status

Purpose

Check current Git changes.

---

Add Changes

git add .

Purpose

Move changes to staging area.

---

Commit Changes

git commit -m "added notes"

Purpose

Save snapshot of changes.

---

Push Changes

git push -u origin feature-login

Purpose

Upload local branch to GitHub.

---

Issues

What is an Issue?

Issue is used to track:

- bugs
- tasks
- feature requests
- problems

Example:

- Docker setup issue
- login bug
- deployment problem

---

Create Issue

gh issue create

Purpose

Create issue from terminal.

---

List Issues

gh issue list

Purpose

Show all open issues.

---

View Specific Issue

gh issue view 1

Purpose

View issue details using issue number.

---

Close Issue

gh issue close 1

Purpose

Mark issue as solved.

---

Pull Requests (PR)

What is Pull Request?

Pull Request means:

"Please review my changes before merging into main branch."

Companies use PRs for:

- code review
- testing
- CI/CD checks
- safe collaboration

---

Create Pull Request

gh pr create --fill

Purpose

Create PR from terminal.

"--fill" automatically fills PR title/body from commit message.

---

List PRs

gh pr list

Purpose

Show all open pull requests.

---

View PR

gh pr view

Purpose

Check PR details, reviewers, checks, and status.

---

Merge PR

gh pr merge

Purpose

Merge pull request into main branch.

---

Merge Methods

Merge Commit

gh pr merge --merge

Preserves full history.

---

Squash Merge

gh pr merge --squash

Combines commits into one commit.

---

Rebase Merge

gh pr merge --rebase

Creates clean linear history.

---

GitHub Actions Preview

List Workflow Runs

gh run list --repo cli/cli

Purpose

Show GitHub Actions workflow runs.

---

View Workflow Run

gh run view <run-id>

Purpose

Check workflow status and logs.

---

Useful GitHub CLI Commands

GitHub API

gh api user

Purpose

Access GitHub API directly from terminal.

---

Search Repositories

gh search repos devops

Purpose

Search GitHub repositories.

---

Create Alias

gh alias set prs "pr list"

Use:

gh prs

Purpose

Create shortcut commands.

---

Important Concepts Learned

Issue

Task or problem tracker.

---

Branch

Safe workspace for development.

---

Commit

Snapshot of code changes.

---

Push

Upload code to GitHub.

---

Pull Request

Request for code review.

---

Merge

Combine code into main branch.

---

Real DevOps Workflow

Issue
→ Branch
→ Change
→ Commit
→ Push
→ Pull Request
→ Review
→ Merge
→ CI/CD

---

Final Understanding

Today I learned:

- how to use GitHub from terminal
- how GitHub CLI works
- basic GitHub workflow
- how teams manage code collaboratively

I also understood that:

- Issues are used for tracking tasks/problems
- Pull Requests are used for review
- Branches are used for safe development
- GitHub CLI helps automate GitHub workflows from terminal
