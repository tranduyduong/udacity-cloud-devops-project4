#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=duongtd/project4:latest
# Step 2
# Run the Docker Hub container with kubernete
kubectl run ml --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/ml --address 0.0.0.0 8000:80
