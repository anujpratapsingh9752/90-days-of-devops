# Day 29 - Introduction to Docker

## What I Learned Today
Today I learned the basics of Docker and containers.  
I understood how containers are different from Virtual Machines and why Docker is important in DevOps.

---

# What is Docker?

Docker is an open-source platform used to build, run, and manage containers.

It helps developers package applications with all dependencies so the application can run consistently on any system.

---

# Task 1 - What is Docker?

## What is a Container?

A container is a lightweight environment used to run applications with all required dependencies.

Containers help developers:
- Run applications consistently
- Avoid “it works on my machine” problems
- Deploy applications faster

A container shares the host operating system kernel, so it is lightweight and fast.

---

## Why Do We Need Containers?

Before containers:
- Applications worked differently on different systems
- Dependency conflicts happened often
- Deployment was difficult

Containers solve these problems by packaging:
- Application code
- Libraries
- Dependencies
- Runtime

into one portable unit.

---

# Containers vs Virtual Machines

| Feature | Containers | Virtual Machines |
|----------|-------------|------------------|
| Size | Lightweight | Heavy |
| Boot Time | Fast | Slow |
| Performance | Better | Lower |
| OS | Shares host OS | Separate OS |
| Resource Usage | Less | More |

### Simple Difference
- VM runs a complete operating system
- Container shares the host operating system

---

# Docker Architecture

Docker follows a client-server architecture.

## Components

### 1. Docker Client
The Docker client is the command line tool used by users.

Example:
bash
docker run nginx


---

### 2. Docker Daemon
The Docker daemon performs actual Docker operations like:
- Building images
- Running containers
- Managing networks and volumes

---

### 3. Docker Images
Docker images are templates used to create containers.

Example:
- nginx image
- ubuntu image

---

### 4. Docker Containers
Containers are running instances of Docker images.

---

### 5. Docker Registry
A registry stores Docker images.

Example:
- Docker Hub

---

# Docker Architecture Flow

text
User
  ↓
Docker Client
  ↓
Docker Daemon
  ↓
Docker Images
  ↓
Containers

Docker Hub → Stores Images


---

# Task 2 - Install Docker

## Verify Docker Installation

bash
docker --version


### Output
Docker version installed successfully.

---

## Run Hello World Container

bash
docker run hello-world


### What Happened?
- Docker checked for the image locally
- Image was not found
- Docker downloaded it from Docker Hub
- Container started successfully
- Docker displayed a success message

---

# Task 3 - Run Real Containers

## Run Nginx Container

bash
docker run -d -p 8080:80 nginx


### Explanation
- -d → Detached mode
- -p → Port mapping
- 8080:80 → Host port to container port

---

## Access Nginx in Browser

text
http://localhost:8080


Nginx welcome page opened successfully.

---

# Run Ubuntu Container in Interactive Mode

bash
docker run -it ubuntu


### Commands Executed

bash
ls
pwd
cat /etc/os-release


### Exit Container

bash
exit


---

# List Running Containers

bash
docker ps


---

# List All Containers

bash
docker ps -a


---

# Stop a Container

bash
docker stop <container_id>


---

# Remove a Container

bash
docker rm <container_id>


---

# Task 4 - Explore Docker Features

## Detached Mode

bash
docker run -d nginx


Detached mode runs the container in the background.

---

## Custom Container Name

bash
docker run -d --name my-nginx -p 8081:80 nginx


---

## Check Logs

bash
docker logs my-nginx


---

## Run Command Inside Running Container

bash
docker exec -it my-nginx bash


This opens a shell inside the running container.

---

# Important Docker Commands Learned

| Command | Purpose |
|----------|----------|
| docker run | Run container |
| docker ps | Show running containers |
| docker ps -a | Show all containers |
| docker stop | Stop container |
| docker rm | Remove container |
| docker logs | View logs |
| docker exec | Access running container |

---

# Why Docker Matters in DevOps

Docker is one of the most important tools in DevOps because:
- Applications become portable
- Deployment becomes faster
- Scaling becomes easier
- CI/CD pipelines use containers heavily
- Kubernetes works with containers

Docker helps developers and DevOps engineers maintain consistency across environments.

---

# Conclusion

Today I learned:
- What Docker is
- What containers are
- Difference between containers and VMs
- Docker architecture
- Running and managing containers
- Accessing containers interactively

This was my first hands-on experience with Docker containers.
