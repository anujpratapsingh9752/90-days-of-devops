# Day 42 – GitHub Runners (Hosted & Self-Hosted)

## Overview

Today I learned about GitHub Actions runners. A runner is a machine that executes jobs in GitHub Actions workflows. I understood two types of runners: GitHub-hosted and self-hosted.

---

## 1. GitHub-Hosted Runners

GitHub-hosted runners are virtual machines provided and managed by GitHub.

### Key Points:
- Managed completely by GitHub
- Automatically provided when workflow runs
- Temporary machine (deleted after job finishes)
- No setup required from user side
- Supports multiple operating systems:
  - ubuntu-latest
  - windows-latest
  - macos-latest

### How it works:
- GitHub assigns a fresh VM for each job
- Job runs and VM is destroyed after completion

---

## 2. Running Jobs on Multiple OS

I created a workflow with 3 jobs running in parallel:
- Ubuntu
- Windows
- macOS

Each job printed:
- OS name
- Hostname
- Current user

This showed that GitHub can run CI jobs on different environments at the same time.

---

## 3. Pre-installed Tools on Ubuntu Runner

On ubuntu-latest runner, I checked installed tools:

- Docker
- Python
- Node.js
- Git

### Why this matters:
- Saves setup time
- Makes CI/CD faster
- Ensures consistent environment
- No manual installation needed

---

## 4. Self-Hosted Runner

A self-hosted runner is a machine (laptop or server) that I manage and connect to GitHub.

### Key Points:
- I manage the machine
- GitHub sends jobs to my machine
- Full control over environment
- Can be reused multiple times

---

## 5. Setup of Self-Hosted Runner

Steps I followed:
1. Created runner in GitHub repo settings
2. Downloaded runner package on Linux system
3. Configured runner using GitHub token
4. Started runner using `./run.sh`

### Status:
- Runner connected successfully
- Status: Listening for jobs
- Runner is now ready to execute workflows

---

## 6. Workflow on Self-Hosted Runner

Created workflow file:

```yaml
runs-on: self-hosted
