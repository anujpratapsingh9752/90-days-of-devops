Day 31 – Dockerfile: Build Your Own Images

Objective

Learn how to create custom Docker images using Dockerfiles and understand important Dockerfile instructions.

---

Task 1: Your First Dockerfile

Dockerfile

FROM ubuntu:24.04

RUN apt-get update && apt-get install -y curl

CMD ["echo", "Hello from my custom image!"]

Build Image

docker build -t my-ubuntu:v1 .

Run Container

docker run my-ubuntu:v1

Output

Hello from my custom image!

Learning

- "FROM" defines the base image.
- "RUN" executes commands during image build.
- "CMD" defines the default command executed when a container starts.

---

Task 2: Dockerfile Instructions

Project Structure

dockerfile-practice/
├── Dockerfile
└── app.txt

app.txt

Hello from COPY instruction

Dockerfile

FROM ubuntu:24.04

WORKDIR /app

COPY app.txt /app/

RUN apt-get update && apt-get install -y curl

EXPOSE 8080

CMD ["cat", "app.txt"]

Build

docker build -t docker-practice:v1 .

Run

docker run docker-practice:v1

Dockerfile Instructions

FROM

Specifies the base image.

RUN

Executes commands during image build.

COPY

Copies files from host machine to image.

WORKDIR

Sets the working directory inside the container.

EXPOSE

Documents the port used by the application.

CMD

Defines the default command executed when the container starts.

---

Task 3: CMD vs ENTRYPOINT

CMD Example

Dockerfile

FROM ubuntu:24.04

CMD ["echo", "hello"]

Run

docker run cmd-im

Output:

hello

Override CMD

docker run cmd-im echo byy

Output:

byy

Observation

CMD can be replaced at runtime.

---

ENTRYPOINT Example

Dockerfile

FROM ubuntu:24.04

ENTRYPOINT ["echo", "hello"]

Run

docker run entry-im

Output:

hello

Pass Arguments

docker run entry-im byy

Output:

hello byy

Observation

ENTRYPOINT remains fixed and runtime arguments are appended.

---

CMD vs ENTRYPOINT

CMD| ENTRYPOINT
Default command| Fixed command
Can be overridden| Cannot be overridden normally
Suitable for defaults| Suitable for main executable

---

Task 4: Static Website with Nginx

index.html

<h1>Hello DevOps 🚀</h1>
<p>My first Docker website</p>

Dockerfile

FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

Build

docker build -t my-website:v1 .

Run

docker run -d -p 8080:80 my-website:v1

Access

http://localhost:8080

---

Task 5: .dockerignore

.dockerignore

node_modules
.git
*.md
.env

Purpose

Prevents unnecessary files from being sent to Docker build context.

Benefits

- Faster builds
- Smaller images
- Better security
- Cleaner build context

---

Task 6: Docker Build Cache

Dockerfile

FROM ubuntu:24.04

COPY app.txt /app/

CMD ["cat", "/app/app.txt"]

Build

docker build -t cache-demo .

Rebuild

docker build -t cache-demo .

Docker reuses unchanged layers from cache.

Cache Behavior

- Same file = cache reused
- Changed file = layer rebuilt

---

Why Layer Order Matters

Bad Example

COPY . .
RUN npm install

Any code change causes dependencies to reinstall.

Good Example

COPY package.json .

RUN npm install

COPY . .

Dependencies remain cached and builds become faster.

---

What is curl?

"curl" is a command-line tool used to send HTTP requests and receive responses from servers.

Example:

curl http://localhost:8080

If the website is running:

<h1>Hello DevOps 🚀</h1>

If the website is not running:

curl: (7) Failed to connect to localhost port 8080

---

Key Takeaways

- Dockerfile is used to create custom images.
- FROM defines the base image.
- RUN executes commands during build.
- COPY copies files into the image.
- WORKDIR sets the working directory.
- EXPOSE documents application ports.
- CMD provides a default command.
- ENTRYPOINT provides a fixed executable.
- .dockerignore excludes unwanted files.
- Docker cache speeds up image builds.
- Layer order directly affects build performance.

---

Commands Practiced

docker build -t image-name .

docker run image-name

docker run -p 8080:80 image-name

docker images

docker ps

docker rm <container-id>

docker rmi <image-id>

curl http://localhost:8080
