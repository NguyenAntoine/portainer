# Portainer docker-compose

[Using Portainer Docker Image](https://www.portainer.io/installation/)

## Installation

You need to create the volume portainer_data

```bash
docker volume create portainer_data
```

Create the `.env` file from [.env.dist](.env.dist) example with the
environment variables from [docker let's encrypt nginx proxy](https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion/wiki/Basic-usage)

```bash
docker-compose up -d
```

## Update docker images

```bash
./updateDockerImages.sh
```
