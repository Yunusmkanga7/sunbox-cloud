#!/bin/bash

echo "Starting Sunbox Cloud Sandbox..."

# Start Docker service if available
service docker start 2>/dev/null || true

# Keep container alive
sleep infinity
