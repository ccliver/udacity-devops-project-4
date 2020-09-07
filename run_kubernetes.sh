#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
#dockerpath=ccliver/udacity-project-4
#echo "Docker ID and Image: $dockerpath"
#docker push $dockerpath

# Run the Docker Hub container with kubernetes
#minikube start --memory 1024
minikube start

kubectl run udacity-project-4 --image=ccliver/udacity-project-4 --port=80 --hostport=8000 --generator=run/v1

dockerpath="ccliver/udacity-project-4"

kubectl run udacity-project-4 \
    --generator=run-pod/v1 \
    --image=$dockerpath \
    --port=80 --labels app=udacity-project-4

kubectl get pods

sleep 15
kubectl port-forward udacity-project-4 8000:80 &
