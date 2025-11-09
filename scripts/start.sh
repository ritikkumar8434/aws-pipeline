#!/bin/bash
echo "Starting new Docker container..."

# Stop and remove any old container if exists
if [ "$(sudo docker ps -q -f name=phpapp)" ]; then
    echo "Stopping existing container..."
    sudo docker stop phpapp
    sudo docker rm phpapp
fi

echo "Authenticating to AWS ECR..."
aws ecr get-login-password --region ap-south-1 \
| docker login --username AWS --password-stdin 220766171134.dkr.ecr.ap-south-1.amazonaws.com

# Pull and start the latest image
sudo docker pull 220766171134.dkr.ecr.ap-south-1.amazonaws.com/php-rds-app:latest
sudo docker run -d --name phpapp -p 80:80 220766171134.dkr.ecr.ap-south-1.amazonaws.com/php-rds-app:latest

echo "Container started successfully!"

