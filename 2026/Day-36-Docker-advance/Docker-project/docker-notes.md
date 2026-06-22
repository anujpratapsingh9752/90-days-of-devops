# 📘 Day 36 - Docker Project Notes (90 Days of DevOps)

> **Topic:** Dockerize a Complete Application

---

# 🎯 Objective

Learn how to package a complete application and database into containers using Docker Compose.

---

# 💡 Main Idea

```
Application
      │
      ▼
 Dockerfile
      │
      ▼
 Docker Image
      │
      ▼
Docker Compose
      │
      ├──────────────┐
      ▼              ▼
 App Container   DB Container
      │              │
      └──────┬───────┘
             ▼
     Docker Network
             │
             ▼
      Persistent Volume
```

---

# 🐳 Dockerfile

### Purpose

Dockerfile is used to build a Docker Image.

### Flow

```
FROM
 ↓
WORKDIR
 ↓
COPY requirements.txt
 ↓
RUN pip install
 ↓
COPY .
 ↓
Create Non-root User
 ↓
USER
 ↓
EXPOSE
 ↓
CMD
```

---

# 📌 Why COPY requirements.txt First?

```
COPY requirements.txt
↓
Install Packages
↓
COPY Source Code
```

### Reason

Docker Layer Cache

If only source code changes,
Docker won't reinstall dependencies.

➡ Faster Build

---

# 🪶 Why Alpine?

```
python:3.10-alpine
```

Advantages

* Small Image
* Fast Download
* Fast Deployment
* Less Storage

---

# 👤 Why Non-root User?

```
RUN adduser -D appuser

USER appuser
```

Reason

* Better Security
* Production Best Practice
* Reduce Risk

---

# 📄 .dockerignore

Purpose

Prevent unnecessary files from entering image.

Example

```
venv
.git
__pycache__
*.pyc
```

Benefits

* Small Image
* Fast Build
* Clean Image

---

# ⚙ Docker Compose

Purpose

Manage multiple containers using one file.

Our Project

```
docker-compose.yml

│

├── Flask App
├── PostgreSQL
├── Network
├── Volume
├── .env
└── Healthcheck
```

---

# 🌍 Environment Variables

```
.env
```

Purpose

* Store Configuration
* Store Secrets
* Reuse Across Environments

Never Hardcode

```
password="123456"
```

Use

```
DB_PASSWORD=password
```

---

# 🗄 Database Volume

Without Volume

```
Delete Container
      │
      ▼
Database Deleted
```

With Volume

```
Delete Container
      │
      ▼
Database Safe
```

Database should always use Volume.

---

# 🌐 Docker Network

Compose automatically creates a network.

Container communication

```
Flask
   │
DB_HOST=db
   │
PostgreSQL
```

Use Service Name

❌ Don't use IP Address

---

# ❤️ Healthcheck

Purpose

Wait until Database becomes Ready.

```
Database Ready

↓

Application Starts
```

Command

```
pg_isready
```

---

# 🔄 Docker Compose Workflow

```
docker compose config
        │
Validate Compose
        │
        ▼
docker compose build
        │
Build Image
        │
        ▼
docker compose up
        │
Create
  • Network
  • Volume
  • Containers
        │
        ▼
Application Running
```

---

# 📌 Commands

### Validate Compose

```bash
docker compose config
```

---

### Build Image

```bash
docker compose build
```

---

### Run Containers

```bash
docker compose up

docker compose up -d
```

---

### Running Containers

```bash
docker ps
```

---

### Logs

```bash
docker compose logs

docker compose logs app

docker compose logs db
```

---

### Stop

```bash
docker compose down
```

---

# ⭐ Best Practices

✅ Use Alpine Image

✅ Use .dockerignore

✅ Use Non-root User

✅ Use Environment Variables

✅ Use Docker Volume

✅ Use Docker Network

✅ Use Healthcheck

✅ Keep Image Small

---

# ❌ Mistakes to Avoid

❌ Run as Root

❌ Hardcode Passwords

❌ Ignore .dockerignore

❌ Store Database Inside Container

❌ Use IP Address Instead of Service Name

❌ Ignore Healthcheck

---

# 🎤 Interview Questions

### Dockerfile vs Docker Compose

Dockerfile → Build Image

Docker Compose → Run Multiple Containers

---

### Why Alpine?

Small & Lightweight

---

### Why Volume?

Persistent Data

---

### Why .env?

Configuration & Security

---

### Why Healthcheck?

Application waits until Database is Ready.

---

### Why Docker Network?

Containers communicate using Service Names.

---

### Why Non-root User?

Security

---

### Why COPY requirements.txt First?

Docker Layer Cache

Faster Rebuild

---

# 🧠 Revision (30 Seconds)

```
Dockerfile
      │
Build Image

Docker Compose
      │
Run Multiple Containers

Volume
      │
Persistent Data

Network
      │
Container Communication

.env
      │
Configuration

Healthcheck
      │
Wait Until Ready

Non-root User
      │
Security

Alpine
      │
Small Image
```

---

# 🚀 Day 36 Outcome

✔ Dockerized Flask Application

✔ PostgreSQL Container

✔ Docker Compose

✔ Named Volume

✔ Custom Network

✔ Healthcheck

✔ Environment Variables

✔ Non-root User

✔ Optimized Docker Image

> **Remember:** As a DevOps Engineer, your responsibility is not to write application logic. Your responsibility is to package, secure, automate, deploy, and run applications reliably.

