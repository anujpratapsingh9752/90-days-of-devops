# Day 37 - Docker Revision

> **90 Days of DevOps**
> **Day 37 - Docker Revision & Self Assessment**

---

# Objective

Today was dedicated to revising Docker concepts learned from Days 29–36. The goal was to identify weak areas, strengthen understanding, and prepare for interviews.

---

# Self Assessment

| Topic                        | Status            |
| ---------------------------- | ----------------- |
| Run Containers               | ✅ Can Do          |
| Docker Images                | ⚠️ Shaky          |
| Dockerfile                   | ✅ Can Do          |
| Build & Tag Images           | ✅ Can Do          |
| Docker Hub Push              | ✅ Can Do          |
| Docker Volumes               | ⚠️ Shaky          |
| Bind Mount                   | ⚠️ Shaky          |
| Docker Networks              | ✅ Can Do          |
| Docker Compose               | ✅ Can Do          |
| Environment Variables (.env) | ✅ Can Do          |
| Multi-stage Dockerfile       | ⚠️ Shaky          |
| Healthcheck                  | ✅ Can Do          |
| depends_on                   | ✅ Can Do          |
| CMD vs ENTRYPOINT            | ✅ Can Do          |
| Image Layers & Build Cache   | ❌ Haven't Revised |
| Docker Cleanup Commands      | ❌ Haven't Revised |

---

# Quick Fire Questions

## 1. What is the difference between an Image and a Container?

**Answer**

* Docker Image is a read-only blueprint/template.
* Docker Container is the running instance of an image.
* Images are built using a Dockerfile.
* Containers execute the application.

---

## 2. What happens to container data after removing a container?

**Answer**

* Data stored inside the container's writable layer is deleted when the container is removed.
* Data stored inside a **Named Volume** remains safe until the volume is removed.

---

## 3. How do containers communicate on the same custom network?

**Answer**

Containers communicate using **container names (Docker DNS)** instead of remembering IP addresses.

Example

```text
App Container
      │
      ▼
Database Host = db
```

---

## 4. Difference between `docker compose down` and `docker compose down -v`

### docker compose down

* Stops containers
* Removes containers
* Removes compose network
* Keeps named volumes

### docker compose down -v

* Stops containers
* Removes containers
* Removes compose network
* Removes named volumes and their data

---

## 5. Why use Multi-stage Dockerfiles?

**Answer**

* Reduce image size
* Remove unnecessary build tools
* Improve security
* Produce clean production images

---

## 6. Difference between COPY and ADD

### COPY

* Copies files from local machine
* Recommended for most projects

### ADD

* Copies files
* Extracts local tar archives
* Can download remote URLs

Use **COPY** unless ADD's extra features are required.

---

## 7. What does `-p 8080:80` mean?

```bash
docker run -p 8080:80 nginx
```

* 8080 → Host machine port
* 80 → Container port

Access application using:

```text
http://localhost:8080
```

---

## 8. How do you check Docker disk usage?

```bash
docker system df
```

Useful cleanup commands:

```bash
docker system prune
docker system prune -a
docker system prune -a --volumes
```

---

## 9. Difference between CMD and ENTRYPOINT

### CMD

* Default command
* Can be overridden using `docker run`

### ENTRYPOINT

* Main executable
* Receives higher priority
* Usually remains fixed while CMD provides default arguments

---

## 10. Difference between Named Volume and Bind Mount

### Named Volume

* Managed by Docker
* Best for databases
* Persistent storage

### Bind Mount

* Uses local machine directory
* Best for development
* Live code synchronization

---

# Topics Revised Today

* Docker CLI
* Dockerfile
* Docker Images
* Containers
* Docker Compose
* Networks
* Volumes
* Bind Mounts
* Docker Hub
* Healthcheck
* depends_on
* CMD vs ENTRYPOINT
* Multi-stage Dockerfile

---

# Weak Areas Identified

* Docker Image Layers
* Build Cache
* Named Volume vs Bind Mount
* Multi-stage Dockerfile
* Docker Cleanup Commands

---

# Improvement Plan

* Revise Image Layers and Docker Build Cache.
* Practice Named Volume and Bind Mount with hands-on examples.
* Build two projects using Multi-stage Dockerfiles.
* Practice Docker cleanup commands (`docker system df`, `docker system prune`).
* Continue using Docker Compose with healthchecks and custom networks.

---

# Self Reflection

Docker fundamentals are becoming stronger after completing Days 29–36. I am confident with Docker Compose, networking, port mapping, Dockerfile basics, Docker Hub, and healthchecks. My focus for the next revision is to strengthen image layers, storage concepts, and optimization techniques such as multi-stage builds.

---

## Overall Progress

**Confidence Level:** 7/10

### Strong Areas

* Docker Compose
* Docker Networking
* Port Mapping
* Docker Hub
* CMD vs ENTRYPOINT
* Healthcheck
* COPY vs ADD

### Needs More Practice

* Image Layers
* Build Cache
* Named Volumes
* Bind Mounts
* Multi-stage Builds
* Docker Cleanup Commands

---

**Status:** ✅ Day 37 Completed

