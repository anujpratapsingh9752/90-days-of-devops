Bhai ye le **single clean block (no break, no extra text)** — direct copy-paste GitHub pe kar sakta hai 👇

````md
# Day 32 – Docker Volumes & Networking

## 🎯 Goal
Understand:
- Data persistence in Docker (Volumes)
- Live file sharing (Bind Mounts)
- Container communication (Networking)

---

# 🧪 Task 1: Container Data Loss (Ephemeral Nature)

## What I did:
- Run PostgreSQL container
- Created table + inserted data
- Stopped & removed container
- Started new container again

## Observation:
❌ Data was LOST

## Why?
Container stores data in writable layer which gets deleted after `docker rm`.

---

# 💾 Task 2: Named Volumes

## Commands:
```bash
docker volume create postgres-data

docker run -d \
--name postgres-volume \
-e POSTGRES_PASSWORD=admin \
-v postgres-data:/var/lib/postgresql \
postgres
```

## Observation:
✔ Data persisted even after container deletion

## Conclusion:
Volumes store data outside container lifecycle.

---

# 📂 Task 3: Bind Mounts

## Command:
```bash
docker run -d \
-p 8080:80 \
-v $(pwd):/usr/share/nginx/html \
nginx
```

## What happened:
- Host folder mounted inside container
- Changes on host reflected instantly in browser

## Difference:

| Named Volume | Bind Mount |
|--------------|------------|
| Docker managed | Host managed |
| Best for DB data | Best for development |
| Safe | Direct access |

---

# 🌐 Task 4: Default Bridge Network

## Commands:
```bash
docker run -dit --name c1 ubuntu bash
docker run -dit --name c2 ubuntu bash
```

## Observation:
✔ IP communication works  
❌ Name-based communication fails

## Conclusion:
Default bridge network does NOT support DNS.

---

# 🔗 Task 5: Custom Network

## Commands:
```bash
docker network create my-app-net

docker run -dit --name app1 --network my-app-net ubuntu bash
docker run -dit --name app2 --network my-app-net ubuntu bash
```

## Observation:
✔ Containers can ping each other using NAME

## Why?
Docker provides internal DNS in custom networks.

---

# 🏗 Task 6: Full Setup (App + DB + Volume + Network)

## Setup:
```bash
docker network create my-app-net
docker volume create pgdata
```

## PostgreSQL:
```bash
docker run -d \
--name postgres-db \
--network my-app-net \
-e POSTGRES_PASSWORD=admin \
-v pgdata:/var/lib/postgresql \
postgres
```

## App Container:
```bash
docker run -dit \
--name app \
--network my-app-net \
ubuntu bash
```

## Inside app:
```bash
apt update && apt install -y iputils-ping
ping postgres-db
```

## Observation:
✔ App successfully connected to DB using container name

---

# 🧠 Final Architecture

App Container → PostgreSQL Container  
        ↘       ↙  
   Docker Custom Network (DNS)  
            +  
       Volume (Data Persistence)

---

# 🔥 Key Learnings

## 1. Containers are ephemeral
Data is lost after removal.

## 2. Volumes solve persistence
Data survives container lifecycle.

## 3. Bind mounts = live sync
Host changes instantly reflect in container.

## 4. Default bridge = limited
No name-based communication.

## 5. Custom network = smart
Supports DNS + service discovery.

---

# 🚀 DevOps One-Liner

Custom networks + volumes = real production-like microservice architecture in Docker.
````

