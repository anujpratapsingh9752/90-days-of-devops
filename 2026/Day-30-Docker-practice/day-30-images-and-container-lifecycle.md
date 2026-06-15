# Day 30 – Docker Images & Container Lifecycle

# Objective

Today I learned:

- Difference between Docker Images and Containers
- Docker image layers and caching
- Full container lifecycle
- Working with running containers
- Docker cleanup commands

---

# 1. Docker Images

## Pull Images from Docker Hub

bash
docker pull nginx
docker pull ubuntu
docker pull alpine


## What happened?

Docker downloaded images from Docker Hub.

- nginx → Web server image
- ubuntu → Full Ubuntu operating system image
- alpine → Lightweight Linux image

---

# List All Images

bash
docker images


## Observation

| Image | Size | Reason |
|---|---|---|
| Ubuntu | Large | Full OS packages |
| Alpine | Small | Minimal lightweight OS |

## Key Learning

Smaller images:
- use less storage
- download faster
- start faster

This is important in DevOps and cloud environments.

---

# Inspect Docker Image

bash
docker image inspect nginx


## Information Found

- Image ID
- Environment variables
- OS architecture
- Layers
- Default command

## Learning

Docker image is a blueprint/template used to create containers.

---

# Remove Docker Image

bash
docker rmi alpine


## Learning

Unused images can be removed to save storage.

---

# 2. Docker Image Layers

## Check Image History

bash
docker image history nginx


## Observation

Each line represents a layer.

Some layers show:
- file changes
- package installation
- commands executed

Some layers show 0B because metadata changes do not add size.

---

# What are Docker Layers?

Docker images are made of multiple read-only layers.

Each layer represents a change such as:
- installing packages
- copying files
- running commands

---

# Why Docker Uses Layers

Benefits:

- Faster builds
- Reuse cached layers
- Save storage
- Efficient deployments

---

# 3. Docker Container Lifecycle

## Create Container Without Starting

bash
docker create nginx


## Learning

Container is created but not running.

---

# Start Container

bash
docker start <container_id>


Container starts running.

---

# Pause Container

bash
docker pause <container_id>


Container processes freeze temporarily.

---

# Unpause Container

bash
docker unpause <container_id>


Container resumes execution.

---

# Stop Container

bash
docker stop <container_id>


Gracefully stops the container.

---

# Restart Container

bash
docker restart <container_id>


Stops and starts container again.

---

# Kill Container

bash
docker kill <container_id>


Forcefully stops the container immediately.

---

# Remove Container

bash
docker rm <container_id>


Deletes the container.

---

# Check Container Status

bash
docker ps -a


## Learning

Shows:
- running containers
- stopped containers
- exited containers

---

# Container Lifecycle Summary

text
Create → Start → Pause → Unpause → Stop → Restart → Kill → Remove


---

# 4. Working with Running Containers

## Run Nginx Container

bash
docker run -d -p 8080:80 --name web nginx


## Explanation

| Option | Meaning |
|---|---|
| -d | Run in background |
| -p 8080:80 | Port mapping |
| --name web | Container name |

---

# Port Mapping Understanding

text
Host Machine Port 8080 → Container Port 80


---

# Open in Browser

text
http://localhost:8080


Nginx welcome page appeared.

---

# View Logs

bash
docker logs web


Shows container logs.

---

# Follow Real-Time Logs

bash
docker logs -f web


Shows live logs continuously.

---

# Enter Inside Container

bash
docker exec -it web sh


## Learning

Accessed the running container shell.

Commands used:

bash
ls
pwd


---

# Run Single Command Inside Container

bash
docker exec web ls


Executes command without entering shell.

---

# Inspect Container

bash
docker inspect web


## Information Found

- IP address
- Network settings
- Port mappings
- Mounts
- Container configuration

---

# 5. Docker Cleanup Commands

## Stop All Running Containers

bash
docker stop $(docker ps -q)


---

# Remove All Containers

bash
docker rm $(docker ps -a -q)


---

# Remove Unused Images

bash
docker image prune -a


## Learning

Removes unused Docker images and frees storage.

---

# Check Docker Disk Usage

bash
docker system df


Shows:
- image size
- container size
- cache usage

---

# Important Concepts Learned

## Docker Image

A read-only blueprint/template used to create containers.

---

# Docker Container

A running instance of a Docker image.

---

# Docker Layers

Images are built layer-by-layer for:
- caching
- faster builds
- storage efficiency

---

# Difference Between Image and Container

| Image | Container |
|---|---|
| Blueprint | Running instance |
| Read-only | Writable |
| Static | Dynamic |

---

# Real DevOps Understanding

Today I learned how Docker internally manages:

- Images
- Containers
- Layers
- Caching
- Networking
- Cleanup

These concepts are foundational for DevOps, Kubernetes, and cloud deployments.

---

# Commands Practiced Today

bash
docker pull nginx
docker pull ubuntu
docker pull alpine

docker images

docker image inspect nginx

docker image history nginx

docker create nginx

docker start <id>

docker pause <id>

docker unpause <id>

docker stop <id>

docker restart <id>

docker kill <id>

docker rm <id>

docker ps -a

docker run -d -p 8080:80 --name web nginx

docker logs web

docker logs -f web

docker exec -it web sh

docker exec web ls

docker inspect web

docker stop $(docker ps -q)

docker rm $(docker ps -a -q)

docker image prune -a

docker system df


---

# Final Learning

text
Image = Blueprint
Container = Running Instance
Layers = Build Steps
