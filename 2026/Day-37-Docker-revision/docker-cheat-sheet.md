# Docker Cheat Sheet

> **90 Days of DevOps – Day 37**
> Personal Docker Cheat Sheet for Daily Revision

---

# Container Commands

| Command                          | Description                                    |
| -------------------------------- | ---------------------------------------------- |
| `docker run IMAGE`               | Create and start a new container from an image |
| `docker run -it IMAGE`           | Run container in interactive mode              |
| `docker run -d IMAGE`            | Run container in detached (background) mode    |
| `docker ps`                      | Show running containers                        |
| `docker ps -a`                   | Show all containers                            |
| `docker stop CONTAINER`          | Stop a running container                       |
| `docker start CONTAINER`         | Start a stopped container                      |
| `docker restart CONTAINER`       | Restart a container                            |
| `docker rm CONTAINER`            | Remove a container                             |
| `docker exec -it CONTAINER bash` | Open shell inside container                    |
| `docker logs CONTAINER`          | Show container logs                            |
| `docker inspect CONTAINER`       | View container details                         |

---

# Image Commands

| Command                             | Description                    |
| ----------------------------------- | ------------------------------ |
| `docker images`                     | List images                    |
| `docker pull IMAGE`                 | Download image from Docker Hub |
| `docker build -t app:v1 .`          | Build image from Dockerfile    |
| `docker tag app:v1 username/app:v1` | Tag image                      |
| `docker push username/app:v1`       | Push image to Docker Hub       |
| `docker rmi IMAGE`                  | Remove image                   |
| `docker image prune`                | Remove unused images           |

---

# Dockerfile Instructions

## FROM

Defines the base image.

```dockerfile
FROM node:22-alpine
```

---

## WORKDIR

Sets working directory.

```dockerfile
WORKDIR /app
```

---

## COPY

Copies files from local machine to image.

```dockerfile
COPY . .
```

---

## ADD

Copies files with extra features:

* Extracts local tar archives
* Can download from URL

Prefer **COPY** unless ADD features are required.

---

## RUN

Executes commands during image build.

```dockerfile
RUN npm install
```

---

## EXPOSE

Documents the application port.

```dockerfile
EXPOSE 3000
```

---

## ENV

Defines environment variables.

```dockerfile
ENV NODE_ENV=production
```

---

## CMD

Default command executed when container starts.

```dockerfile
CMD ["node","server.js"]
```

Can be overridden.

---

## ENTRYPOINT

Defines the main executable.

```dockerfile
ENTRYPOINT ["python"]
CMD ["app.py"]
```

Runs:

```
python app.py
```

---

# Build Commands

Build image

```bash
docker build -t myapp:v1 .
```

Build using another Dockerfile

```bash
docker build -f Dockerfile.multistage -t myapp:v2 .
```

---

# Container Port Mapping

```bash
docker run -p 8080:80 nginx
```

Meaning

```
Host Port (8080)
        │
        ▼
Container Port (80)
```

Open browser

```
http://localhost:8080
```

---

# Volumes

Create volume

```bash
docker volume create myvolume
```

List

```bash
docker volume ls
```

Inspect

```bash
docker volume inspect myvolume
```

Remove

```bash
docker volume rm myvolume
```

---

# Named Volume vs Bind Mount

## Named Volume

* Managed by Docker
* Best for databases
* Data survives container deletion

Example

```bash
docker run -v myvolume:/var/lib/mysql mysql
```

---

## Bind Mount

* Uses local machine folder
* Best for development
* Live code changes

Example

```bash
docker run -v $(pwd):/app node
```

---

# Networks

Create network

```bash
docker network create app-network
```

List

```bash
docker network ls
```

Inspect

```bash
docker network inspect app-network
```

Connect container

```bash
docker network connect app-network mycontainer
```

---

# Docker Compose

Start

```bash
docker compose up
```

Detached

```bash
docker compose up -d
```

Build

```bash
docker compose build
```

Logs

```bash
docker compose logs
```

List containers

```bash
docker compose ps
```

Stop

```bash
docker compose down
```

Remove containers + volumes

```bash
docker compose down -v
```

---

# Docker Hub

Login

```bash
docker login
```

Tag

```bash
docker tag app:v1 username/app:v1
```

Push

```bash
docker push username/app:v1
```

Pull

```bash
docker pull username/app:v1
```

---

# Healthcheck

Example

```yaml
healthcheck:
  test: ["CMD-SHELL","pg_isready -U admin"]
  interval: 10s
  timeout: 5s
  retries: 5
```

Purpose

* Checks application health
* Detects unhealthy services
* Useful with depends_on

---

# Multi-stage Build

Purpose

* Reduce image size
* Remove build tools
* Improve security
* Faster deployment

Example

```dockerfile
FROM node:22 AS builder

WORKDIR /app

COPY . .

RUN npm install

RUN npm run build

FROM nginx:alpine

COPY --from=builder /app/dist /usr/share/nginx/html
```

---

# COPY vs ADD

COPY

* Simple file copy
* Recommended for most projects

ADD

* Copies files
* Extracts local tar files
* Can fetch remote URLs

---

# Image vs Container

Image

* Blueprint
* Read-only
* Created using Dockerfile

Container

* Running instance of image
* Executes application
* Has writable layer

---

# Useful Cleanup Commands

Check Docker disk usage

```bash
docker system df
```

Remove unused resources

```bash
docker system prune
```

Remove everything unused

```bash
docker system prune -a
```

Remove everything including volumes

```bash
docker system prune -a --volumes
```

---

# Most Asked Interview Questions

* Image vs Container
* CMD vs ENTRYPOINT
* COPY vs ADD
* Named Volume vs Bind Mount
* Multi-stage Build
* docker compose down vs down -v
* Healthcheck
* Image Layers
* Docker Networking
* Port Mapping
* Dockerfile Instructions

