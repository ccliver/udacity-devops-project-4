#!/usr/bin/env bash

docker build . -t ccliver/udacity-project-4
docker image ls
docker run -p 8000:80 ccliver/udacity-project-4
