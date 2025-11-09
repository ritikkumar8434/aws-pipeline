#!/bin/bash
echo "Stopping existing Docker containers..."
docker stop phpapp || true
docker rm phpapp || true

