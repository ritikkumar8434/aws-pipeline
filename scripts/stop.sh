#!/bin/bash
echo "Stopping existing Docker container..."
sudo docker stop phpapp || true
sudo docker rm phpapp || true
