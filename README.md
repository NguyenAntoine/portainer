# Portainer Docker Compose Setup

Container management UI for Docker and Kubernetes.

**Documentation:** [Portainer Installation](https://www.portainer.io/installation/)

---

## Quick Start

### 1. Create Environment File

Copy the example configuration:

```bash
cp .env.dist .env
```

Edit `.env` with your settings:

```bash
VIRTUAL_HOST=portainer.example.com
LETSENCRYPT_HOST=portainer.example.com
LETSENCRYPT_EMAIL=your-email@example.com
```

### 2. Create Data Volume

```bash
docker volume create portainer_data
```

### 3. Start Service

```bash
# Using modern Docker Compose (v2+)
docker compose up -d

# Wait for service to start
sleep 10

# Check status
docker compose ps

# View logs
docker compose logs -f app
```

### 4. Access Portainer

- Open `https://your-domain.com`
- Create admin account on first access
- Manage Docker containers and images

---

## Update Portainer

To update Portainer to the latest version:

```bash
./updateDockerImages.sh
```

---

## Networking

Service is connected to:
- **default:** Internal network for container-to-container communication
- **reverse-proxy:** External network for nginx reverse proxy (must exist)

Create reverse-proxy network if it doesn't exist:

```bash
docker network create reverse-proxy
```

---

## Features

- 📊 Container and image management
- 🔐 User access control
- 🌐 Multi-environment support
- 🐳 Docker & Kubernetes support
- 📱 Responsive web interface

---

## Troubleshooting

### Container Logs

```bash
docker compose logs -f app
```

### Reset to Default

```bash
# Stop service
docker compose down

# Remove data volume (WARNING: Destructive!)
docker volume rm portainer_data

# Restart
docker compose up -d
```

---

## Docker Compose Version

Requires Docker Compose v2+ (use `docker compose` instead of `docker-compose`)

```bash
# Check version
docker compose version
```

---

**Last Updated:** 2026-02-03
