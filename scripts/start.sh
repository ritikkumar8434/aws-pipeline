#!/bin/bash
echo "Starting new Docker container..."
docker pull 220766171134.dkr.ecr.ap-south-1.amazonaws.com/php-rds-app:latest
docker run -d --name phpapp -p 80:80 220766171134.dkr.ecr.ap-south-1.amazonaws.com/php-rds-app:latest


