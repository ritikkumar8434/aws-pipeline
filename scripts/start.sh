#!/bin/bash
echo "Starting new Docker container..."

# Stop and remove any old container if exists
if [ "$(docker ps -q -f name=phpapp)" ]; then
    echo "Stopping existing container..."
    docker stop phpapp
    docker rm phpapp
fi

# Pull and start the latest image
docker pull 220766171134.dkr.ecr.ap-south-1.amazonaws.com/php-rds-app:latest
docker run -d --name phpapp -p 80:80 220766171134.dkr.ecr.ap-south-1.amazonaws.com/php-rds-app:latest

echo "Container started successfully!"

