# Day 34 - Docker Compose Advanced

## What I Learned Today

Today I built a real-world multi-container application using Docker Compose.

Architecture:

User → Flask App → PostgreSQL → Redis

---

## 1. App + Database + Cache

Services Used:

- Flask Application
- PostgreSQL Database
- Redis Cache

Why?

- App handles user requests
- PostgreSQL stores persistent data
- Redis stores temporary/cache data

---

## 2. Build Custom Image

Compose:

```yaml
web:
  build: ./app
```

Learning:

- build creates image from Dockerfile
- useful when running our own application code

Rebuild:

```bash
docker compose up --build
```

---

## 3. depends_on

```yaml
depends_on:
  db:
    condition: service_healthy
```

Learning:

App waits until database becomes healthy.

Without depends_on:

App may start before DB is ready.

Result:

Connection errors.

---

## 4. Healthcheck

```yaml
healthcheck:
  test: ["CMD-SHELL","pg_isready -U admin -d mydb"]
  interval: 10s
  timeout: 5s
  retries: 5
```

Learning:

Container running ≠ Application ready

Healthcheck verifies service readiness.

---

## 5. Restart Policies

```yaml
restart: always
```

Purpose:

Automatically restart critical services.

Use Cases:

- PostgreSQL
- Redis
- Nginx

Other Option:

```yaml
restart: on-failure
```

Used for:

- Workers
- Scripts
- Jobs

Difference:

always:
Restart every time container exits.

on-failure:
Restart only when exit code is non-zero.

---

## 6. Named Volumes

```yaml
volumes:
  - postgres_data:/var/lib/postgresql/data
```

Learning:

Without Volume:

Container removed → Data lost

With Volume:

Container removed → Data preserved

Used for:

- Databases
- Important application data

---

## 7. Custom Networks

```yaml
networks:
  backend:
```

Learning:

Containers communicate using service names.

Examples:

```text
db
redis
web
```

No need to use container IP addresses.

Docker internal DNS resolves service names automatically.

---

## 8. Labels

```yaml
labels:
  project: "day34"
  owner: "anuj"
```

Purpose:

Metadata for container organization.

Useful in large production environments.

---

## 9. Scaling

Command:

```bash
docker compose up --scale web=3
```

Expected:

```text
web-1
web-2
web-3
```

Problem:

Port conflict

Example:

```yaml
ports:
  - "5000:5000"
```

Only one container can use host port 5000.

Production Solution:

- Nginx
- Traefik
- HAProxy
- Kubernetes Service

These act as Load Balancers.

---

## Commands Practiced

```bash
docker compose up -d

docker compose down

docker compose up --build

docker compose ps

docker ps

docker volume ls

docker network ls

docker network inspect <network>

docker inspect <container>

docker kill <container>

docker start <container>

docker stop <container>

docker compose up --scale web=3
```

---

## Key Takeaways

- Docker Compose manages multi-container applications.
- depends_on controls startup order.
- Healthchecks verify actual service readiness.
- Volumes provide persistent storage.
- Networks allow container communication.
- Restart policies improve reliability.
- Service names can be used instead of IP addresses.
- Scaling requires a load balancer because ports cannot be shared directly.

---

## Project Structure

```text
Day-34-compose-practice/
│
├── app/
│   ├── app.py
│   ├── Dockerfile
│   └── requirements.txt
│
├── docker-compose.yml
│
└── day-34-compose-advanced.md
```
