#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=kelanik8/prediction_project
TAG=prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $TAG --image=$dockerpath --generator=run-pod/v1

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/$TAG 8000:80
