# Day 43 – Jobs, Steps, Environment Variables & Conditionals

## 🚀 What I Learned Today

Today I learned how GitHub Actions controls workflow execution using:
- Multiple jobs
- Job dependencies
- Environment variables
- Job outputs
- Condition-based execution (if conditions)

These concepts are important for real DevOps CI/CD pipelines.

---

# 🧱 1. Multi-Job Workflow

## What is a Job?
A job is a set of steps that run on a runner.

## What I practiced:
- Created 3 jobs: build, test, deploy
- Used dependency between jobs

## Key point:
- test runs only after build
- deploy runs only after test

## Example:
build → test → deploy

## Why it is useful:
In real DevOps pipelines, deployment should only happen if build and tests pass successfully.

---

# 🌍 2. Environment Variables

## Types of variables:

### 1. Workflow level
Used for all jobs
Example: APP_NAME

### 2. Job level
Used only inside one job
Example: ENVIRONMENT

### 3. Step level
Used only in one step
Example: VERSION

## Also learned:
GitHub context variables:
- GITHUB_SHA → commit id
- GITHUB_ACTOR → user who triggered workflow

## Why it is useful:
Environment variables help manage configuration without hardcoding values.

---

# 🔁 3. Job Outputs

## What is output?
Output is data passed from one job to another job.

## Example:
- Job 1 generates today's date
- Job 2 uses that date

## Syntax:
- Set output using $GITHUB_OUTPUT
- Read output using needs.job.outputs.name

## Why it is useful:
Used in real pipelines to pass data like:
- build version
- artifact name
- timestamps

---

# ⚙️ 4. Conditionals in GitHub Actions

## What I learned:

### if condition
Used to run steps only when condition is true

Example:
- Run only on main branch

### failure()
Runs only if previous step failed

### continue-on-error
If true, step failure does not stop the pipeline

## Why it is useful:
Used for controlling workflow behavior based on conditions.

---

# 🔗 5. Smart Pipeline (Final Practice)

## What I built:
A pipeline with:
- lint job
- test job
- summary job

## Flow:
lint + test (parallel)
↓
summary job (runs after both)

## Summary job does:
- checks branch type (main or feature)
- prints commit message

## Why it is useful:
This is a real-world CI/CD pattern used in DevOps.

---

# 🧠 Important Concepts Summary

- jobs → independent tasks in pipeline
- needs → job dependency
- env → environment variables
- outputs → data sharing between jobs
- if → condition control
- continue-on-error → ignore failures

---

# 🎯 Real DevOps Understanding

GitHub Actions is used in DevOps to:
- automate build
- run tests
- deploy applications
- control pipeline flow
- manage environments

---
