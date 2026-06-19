# Day 33 - Docker Compose Revision Notes

## What is Docker Compose?

Docker Compose is a tool used to run and manage multiple containers using a single `docker-compose.yml` file.

Instead of running many `docker run` commands, we define everything in one YAML file and start all services together.

---

## Why Docker Compose?

Without Compose:

* Create network manually
* Create volume manually
* Run database container
* Run application container
* Connect containers manually

With Compose:

```bash
docker compose up -d
```

Everything starts automatically.

---

## Basic Structure

```yaml
services:
  nginx:
    image: nginx
```

### services

Defines all containers that will run.

### image

Specifies which Docker image to use.

---

## Port Mapping

```yaml
ports:
  - "8081:80"
```

Meaning:

```text
Host Port : Container Port
```

```text
8081 -> My Laptop
80   -> Nginx/WordPress inside container
```

Browser:

```text
http://localhost:8081
```

---

## Multi-Container Example

```yaml
services:
  db:
    image: mysql:5.7

  wordpress:
    image: wordpress
```

Compose creates a network automatically.

Both containers can communicate without manual networking.

---

## Service Name as Hostname

```yaml
WORDPRESS_DB_HOST: db:3306
```

### db

Service name of MySQL container.

### 3306

Default MySQL port.

Meaning:

```text
Connect to MySQL service named "db" on port 3306
```

No need to use IP addresses.

---

## Environment Variables

### MySQL Variables

```yaml
MYSQL_ROOT_PASSWORD
MYSQL_DATABASE
MYSQL_USER
MYSQL_PASSWORD
```

Used by MySQL image to:

* Create database
* Create users
* Set passwords

---

### WordPress Variables

```yaml
WORDPRESS_DB_HOST
WORDPRESS_DB_NAME
WORDPRESS_DB_USER
WORDPRESS_DB_PASSWORD
```

Used by WordPress image to connect to MySQL.

---

## Why Use .env?

Bad Practice:

```yaml
MYSQL_PASSWORD: wppass
```

Good Practice:

`.env`

```env
MYSQL_PASSWORD=wppass
```

Compose:

```yaml
MYSQL_PASSWORD: ${MYSQL_PASSWORD}
```

Benefits:

* Centralized configuration
* Easy updates
* Better security
* Reusable compose files

---

## Volumes

```yaml
volumes:
  - db_data:/var/lib/mysql
```

Purpose:

Store MySQL data permanently.

Without volume:

```text
Container Deleted
      ↓
Data Deleted
```

With volume:

```text
Container Deleted
      ↓
Data Safe
```

---

## Compose Commands

Start:

```bash
docker compose up -d
```

View containers:

```bash
docker compose ps
```

View logs:

```bash
docker compose logs -f
```

Specific service logs:

```bash
docker compose logs wordpress
```

Stop services:

```bash
docker compose stop
```

Remove containers and network:

```bash
docker compose down
```

Rebuild:

```bash
docker compose up -d --build
```

---

## Data Verification

Enter MySQL:

```bash
docker exec -it wordpress-compose-db-1 mysql -u wpuser -p
```

Select database:

```sql
USE wordpress;
```

View tables:

```sql
SHOW TABLES;
```

View users:

```sql
SELECT ID,user_login,user_email FROM wp_users;
```

---

## Most Important Interview Points

1. Docker Compose is used to manage multi-container applications.
2. Compose automatically creates a network.
3. Service names act as DNS names.
4. Volumes provide persistent storage.
5. `.env` files separate configuration from code.
6. `docker compose up -d` starts all services together.
7. `docker compose down` removes containers and networks but not named volumes.

---

## One-Line Summary

Docker Compose allows multiple containers, networks, volumes, and environment variables to be managed from a single YAML file.

