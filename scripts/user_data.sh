#!/bin/bash

# Update packages and install Docker
sudo apt update -y
sudo apt install -y docker.io git

# Start Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Clone your Node.js app repo (update this with your actual repo)
cd /home/ubuntu
git clone https://github.com/thakurbharat75/aws-nodejs-project-boilerplate.git
cd node-boilerplate-app

# Optional: checkout a specific branch
# git checkout main

# Build Docker image
sudo docker build -t node-boilerplate-app .

# Run Docker container
sudo docker run -d --env-file .env -p 3000:3000 node-boilerplate-app

