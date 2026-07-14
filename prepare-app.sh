#!/bin/bash

echo "Preparing application..."

# Create Docker network
docker network inspect assignment-network >/dev/null 2>&1 || \
docker network create assignment-network

# Create Docker volume
docker volume inspect mysql-data >/dev/null 2>&1 || \
docker volume create mysql-data

echo "Preparation complete."
