#!/bin/bash

echo "Starting Sunbox Web Terminal..."

service docker start 2>/dev/null || true

ttyd -p 8080 bash

