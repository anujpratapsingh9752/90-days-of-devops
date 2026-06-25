# Day 39 - CI/CD Concepts

## Why CI/CD Exists

When many developers work on the same project, manual testing and deployment can cause problems.

### What Can Go Wrong?

* Bugs can reach production
* Developers can overwrite each other's code
* Deployment steps can be missed
* Human mistakes can happen
* Rollback becomes difficult

### What Does "It Works On My Machine" Mean?

The application works on the developer's computer but does not work on another computer or server.

### Reasons

* Different operating systems
* Different software versions
* Missing dependencies
* Different environment variables

Example:

Developer Laptop:

* Node.js v22

Production Server:

* Node.js v18

Application works locally but fails in production.

### Manual Deployment

Manual deployment is slow and risky.

A team can safely deploy only a few times per day manually.

With CI/CD, teams can deploy many times a day.

---

# Continuous Integration (CI)

Continuous Integration means developers regularly push and merge code into a shared repository.

Whenever code is pushed:

* Build runs automatically
* Tests run automatically
* Code checks run automatically

Purpose:

Find problems early before deployment.

### Example

Developer pushes code to GitHub.

GitHub Actions automatically runs tests.

---

# Continuous Delivery

Continuous Delivery means the application is always ready to be released.

After CI succeeds:

* Build is created
* Tests pass
* Application is ready for deployment

Production deployment usually needs manual approval.

### Example

Application is automatically deployed to staging.

A team member approves production deployment.

---

# Continuous Deployment

Continuous Deployment means every successful change is automatically deployed to production.

No manual approval is needed.

### Example

Push Code
→ Run Tests
→ Build Application
→ Deploy to Production Automatically

---

# CI vs Continuous Delivery vs Continuous Deployment

| Feature                   | CI  | Continuous Delivery | Continuous Deployment |
| ------------------------- | --- | ------------------- | --------------------- |
| Build                     | Yes | Yes                 | Yes                   |
| Test                      | Yes | Yes                 | Yes                   |
| Release Ready             | No  | Yes                 | Yes                   |
| Auto Deploy to Production | No  | No                  | Yes                   |

---

# Pipeline Anatomy

## Trigger

An event that starts the pipeline.

Examples:

* Push
* Pull Request
* Schedule
* Manual Run

Example:

```yaml
on:
  push:
```

---

## Stage

A logical phase of a pipeline.

Examples:

* Build
* Test
* Deploy

---

## Job

A unit of work inside a pipeline.

Examples:

* Run Tests
* Build Docker Image
* Deploy Application

Example:

```yaml
jobs:
  test:
  build:
  deploy:
```

Each job performs a specific task.

---

## Step

A single action inside a job.

Example:

```yaml
steps:
  - checkout code
  - install dependencies
  - run tests
```

Each line is a step.

---

## Runner

The machine that executes jobs.

Types:

* GitHub Hosted Runner
* Self Hosted Runner

Example:

```yaml
runs-on: ubuntu-latest
```

---

## Artifact

The output produced by a job.

Examples:

* Docker Image
* ZIP File
* Build Folder
* JAR File

Artifacts can be used in later jobs or deployments.

---

# CI/CD Hierarchy

Step → Job → Pipeline

Example:

Pipeline

├── Test Job

│   ├── Checkout Code

│   ├── Install Dependencies

│   └── Run Tests

│

├── Build Job

│   └── Build Docker Image

│

└── Deploy Job

```
└── Deploy Application
```

---

# CI/CD Pipeline Diagram

Developer Pushes Code

```
    |

    V
```

+------------------+

| Trigger: Push    |

+------------------+

```
    |

    V
```

+------------------+

| Test Stage       |

| Run Tests        |

+------------------+

```
    |

    V
```

+------------------+

| Build Stage      |

| Build Docker     |

| Image            |

+------------------+

```
    |

    V
```

+------------------+

| Deploy Stage     |

| Deploy to        |

| Staging Server   |

+------------------+

```
    |

    V
```

Application Running

---

# Key Points

* CI/CD is a practice, not a tool.
* GitHub Actions, Jenkins, GitLab CI, and CircleCI are CI/CD tools.
* A failed pipeline is useful because it finds problems early.
* Job = Unit of Work.
* Step = Single Action.
* Runner executes jobs.
* Artifact is the output of a job.
* Continuous Delivery requires manual approval before production deployment.
* Continuous Deployment automatically deploys to production.
* CI helps find issues early.

