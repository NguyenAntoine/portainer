#!/bin/bash
# Update Portainer to latest version

echo "Stopping container..."
docker compose down

echo "Pulling latest image..."
docker compose pull

echo "Starting container..."
docker compose up -d

echo "Waiting for service to start..."
sleep 5

echo "Checking container status..."
docker compose ps

echo "Update complete!"
