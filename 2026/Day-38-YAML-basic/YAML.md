# Day 38 – YAML Basics (Simple Revision Notes)

## What is YAML?
YAML is a simple configuration language used in DevOps tools like GitHub Actions, Docker Compose, Kubernetes, and Ansible. It is easy to read and write.

## YAML Rules
- Do NOT use tabs (only spaces)
- Indentation is very important
- Use key-value format
- Always put space after :
- YAML is case sensitive

## Key-Value Pairs
name: Anuj
role: DevOps Learner
experience_years: 0
learning: true

## Data Types
- String: name: Anuj
- Number: age: 20
- Boolean: true / false (no quotes)

## Lists

Block style:
tools:
  - Linux
  - Git
  - Docker
  - Kubernetes

Inline style:
hobbies: [Coding, Learning, Reading]

## Nested Objects
server:
  name: ubuntu-server
  ip: 192.168.1.10
  port: 22

database:
  host: localhost
  name: devops_db
  credentials:
    user: anuj
    password: mypassword

## Multi-line Strings

Pipe (|) → keeps line breaks:
startup_script: |
  sudo apt update
  sudo apt install nginx -y
  sudo systemctl start nginx

Folded (>) → makes single line:
description: >
  This server is used
  for learning YAML
  and DevOps basics

## Difference between | and >
| Symbol | Meaning |
|--------|--------|
| | | Keeps line breaks |
| > | Converts to single line |

## YAML Start Marker
---
Used to start a YAML document or separate multiple documents.

## YAML Validation
Command:
yamllint file.yaml

Common issues:
- Missing --- → warning
- Wrong indentation → error

## Common Mistake

Wrong:
tools:
- docker
  - kubernetes

Correct:
tools:
  - docker
  - kubernetes

## Real DevOps Usage

GitHub Actions:
jobs:
  build:
    steps:
      - run: |
          npm install
          npm test

Kubernetes:
apiVersion: v1
kind: Pod

Docker Compose:
services:
  app:
    image: node

## Key Points
- YAML is used for configuration
- Indentation is very important
- | keeps formatting
- > converts to single line
- Lists use -
- Used in almost all DevOps tools
