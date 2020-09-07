#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

dockerpath=ccliver/udacity-project-4

echo "Docker ID and Image: $dockerpath"

docker push $dockerpath
