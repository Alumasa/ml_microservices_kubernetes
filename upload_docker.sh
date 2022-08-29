#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=vanessa21/mlmicroapp

# Step 2:  
# Authenticate & tag
docker login
docker tag mlmicroapp vanessa21/mlmicroapp
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push vanessa21/mlmicroapp