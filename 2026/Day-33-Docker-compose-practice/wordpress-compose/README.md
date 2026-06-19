# Day 33 - Docker Compose Multi-Container Application

## My Role

* Created Docker Compose files for single-container and multi-container applications.
* Configured WordPress and MySQL services.
* Implemented Docker named volumes for data persistence.
* Used environment variables and `.env` files for configuration management.
* Verified service-to-service communication using Docker Compose networking.
* Practiced Docker Compose commands and troubleshooting.

## Project Overview

This project demonstrates how to use Docker Compose to manage multiple containers with a single YAML file.

### Services Used

* Nginx
* WordPress
* MySQL

## Project Structure

```text
Day-33-Docker-compose-practice/
│
├── compose-basics/
│   └── docker-compose.yml
│
├── wordpress-compose/
│   ├── docker-compose.yml
│   ├── .env
│
└── README.md
```

## Start Application

```bash
docker compose up -d
```

## View Running Services

```bash
docker compose ps
```

## View Logs

```bash
docker compose logs -f
```

## Stop Services

```bash
docker compose stop
```

## Remove Containers and Networks

```bash
docker compose down
```

## Data Persistence

MySQL data is stored using a Docker named volume:

```yaml
volumes:
  - db_data:/var/lib/mysql
```

This ensures data remains available even after containers are stopped and recreated.

## Key Concepts Learned

* Docker Compose Basics
* Multi-Container Applications
* Docker Networking
* Service Discovery
* Docker Volumes
* Environment Variables
* Data Persistence
* WordPress and MySQL Integration

## Outcome

Successfully deployed and managed a WordPress and MySQL multi-container application using Docker Compose.

