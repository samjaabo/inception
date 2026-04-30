# Inception

This project is part of the 42 curriculum.

The goal is to build a small virtualized infrastructure using Docker.

---

## Overview

This project sets up a complete web stack using Docker containers:

- NGINX (web server)
- WordPress (CMS)
- MariaDB (database)

Each service runs in its own container and communicates through a Docker network.

---

## Purpose

The objective of this project is to understand:

- containerization with Docker
- service separation and isolation
- network communication between containers
- persistent data using volumes
- infrastructure as code

---

## Architecture

The system is composed of:

- **NGINX container** → handles HTTPS requests
- **WordPress container** → application layer (PHP)
- **MariaDB container** → database layer

All containers are orchestrated using Docker Compose.

---

## Features

- Custom Dockerfiles for each service
- Secure NGINX configuration (TLS/SSL)
- Persistent volumes for database and WordPress data
- Isolated Docker network for service communication
- Automatic container restart policy

---

## Usage

Build and start the infrastructure:

```bash id="inc2cmd"
make
```   
