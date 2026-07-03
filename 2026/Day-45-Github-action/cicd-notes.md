# Day 45 - Docker Build & Push with GitHub Actions

## Objective

Create a CI/CD pipeline that automatically builds a Docker image and pushes it to Docker Hub whenever code is pushed to GitHub.

---

# Workflow

```
Developer
    |
git push
    |
GitHub Repository
    |
GitHub Actions
    |
Checkout Code
    |
Login to Docker Hub
    |
Build Docker Image
    |
Push Image to Docker Hub
    |
Docker Hub
    |
docker pull
    |
docker run
    |
Running Container
```

---

# What I Learned

## 1. GitHub Actions

GitHub Actions automatically runs workflows after a GitHub event (like git push).

Workflow files are stored inside:

```
.github/workflows/
```

---

## 2. actions/checkout

```yaml
uses: actions/checkout@v4
```

Purpose:

* Downloads the repository code into the GitHub Runner.
* Without checkout, the runner cannot see the project files.

---

## 3. Docker Login

```yaml
uses: docker/login-action@v3
```

Purpose:

* Logs in to Docker Hub using GitHub Secrets.
* Uses:

  * DOCKER_USERNAME
  * DOCKER_TOKEN

---

## 4. Docker Build

Docker builds an image using the Dockerfile.

Example:

```bash
docker build -t my-python-app .
```

The image contains the application and its environment.

---

## 5. Docker Push

When:

```yaml
push: true
```

The image is uploaded to Docker Hub.

When:

```yaml
push: false
```

The image is only built and not uploaded.

---

## 6. Build Context

```yaml
context: .
```

"." means the project root directory.

Docker looks for the Dockerfile and application files from this location.

---

## 7. Image Tags

Latest tag:

```
my-python-app:latest
```

Always points to the newest image.

SHA tag:

```
my-python-app:sha-xxxxxxx
```

Represents one specific commit.

SHA tags are useful for rollback and version tracking.

---

## 8. GitHub Secrets

Secrets keep sensitive information secure.

Used secrets:

* DOCKER_USERNAME
* DOCKER_TOKEN

Secrets are not visible in workflow logs.

---

## 9. Status Badge

A status badge shows whether the workflow is passing or failing.

Green = Passing

Red = Failed

The badge updates automatically after every workflow run.

---

## 10. Docker Pull

```bash
docker pull username/my-python-app:latest
```

Downloads the image from Docker Hub.

---

## 11. Docker Run

```bash
docker run --rm username/my-python-app:latest
```

Creates and starts a container from the image.

`--rm` automatically removes the container after it stops.

---

## 12. Error I Saw

```
ModuleNotFoundError: No module named 'flask'
```

Reason:

The Docker image did not contain the Flask package.

The CI/CD pipeline worked correctly.

The problem was inside the application image because Flask was not installed.

---

# Difference

## docker build

Creates a Docker image.

## docker push

Uploads the image to Docker Hub.

## docker pull

Downloads the image from Docker Hub.

## docker run

Starts a container from the image.

---

# Real Production Flow

```
Code Change
    |
git push
    |
GitHub Actions
    |
Build Docker Image
    |
Push Docker Image
    |
Docker Hub
    |
Production Server
    |
docker pull
    |
docker run
    |
Application Running
```

---

# Interview Points

* GitHub Actions automates CI/CD.
* Checkout downloads repository code.
* Docker Login authenticates with Docker Hub.
* Docker Build creates the image.
* Docker Push uploads the image.
* Latest tag points to the newest image.
* SHA tag identifies a specific version.
* Docker Pull downloads the image.
* Docker Run starts the application.
* GitHub Secrets securely store credentials.

---

# Commands Used

```bash
docker build -t my-python-app .

docker login

docker pull username/my-python-app:latest

docker run --rm username/my-python-app:latest

git add .
git commit -m "message"
git push origin main
```

---

# Day 45 Summary

* Learned Docker Build in GitHub Actions.
* Logged in to Docker Hub using GitHub Secrets.
* Built and pushed Docker images automatically.
* Used latest and SHA tags.
* Added GitHub Actions status badge.
* Pulled and ran the Docker image locally.
* Understood the complete CI/CD pipeline from Git Push to Running Container.

