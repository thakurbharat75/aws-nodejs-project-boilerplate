#!/bin/bash

# Redirect all output to log file
#exec > /var/log/user_data.log 2>&1
#set -x

echo "========== User data script started =========="

# Update packages and install Docker + Git
echo "[INFO] Updating packages..."
sudo apt update -y
sudo apt install -y docker.io git

# Enable and start Docker
echo "[INFO] Starting Docker service..."
sudo systemctl start docker
sudo systemctl enable docker

# Wait to ensure Docker service is fully running
echo "[INFO] Sleeping for 10 seconds to allow Docker to stabilize..."
sleep 10

# Move to working directory
cd /home/ubuntu || exit 1

# Clone the GitHub repo
echo "[INFO] Cloning Node.js project..."
git clone https://github.com/thakurbharat75/aws-nodejs-project-boilerplate.git
cd aws-nodejs-project-boilerplate || exit 1

# Optional: wait a bit in case of slow disk or clone
echo "[INFO] Sleeping for 5 seconds before building..."
sleep 5

# Build Docker image
echo "[INFO] Building Docker image..."
sudo docker build -t node-boilerplate-app .

# Wait to ensure image is built
sleep 5

# Run Docker container
echo "[INFO] Running Docker container..."
sudo docker run -d --env-file .env -p 3000:3000 node-boilerplate-app

echo "========== User data script finished =========="

