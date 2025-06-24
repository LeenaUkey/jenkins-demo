#!/bin/bash

echo "Updating system..."
sudo apt update -y

echo "Installing NGINX..."
sudo apt install nginx -y

echo "Setting up index.html..."
echo "Hello from Jenkins on EC2 with NGINX" | sudo tee /var/www/html/index.html

echo "Starting and enabling NGINX..."
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Deployment complete. NGINX should be running on port 80."

