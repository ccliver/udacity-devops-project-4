# Project 4 for the [Udacity DevOps Engineer Nanodegree](https://www.udacity.com/course/cloud-dev-ops-nanodegree--nd9991)

## Operationalize a Machine Learning Microservice API
---

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.


[![ccliver](https://circleci.com/gh/ccliver/udacity-devops-project-4.svg?style=svg)](<LINK>)

## Usage
```sh
$ make
setup                          Create python virtualenv.
install                        This should be run from inside a virtualenv
test                           Additional, optional, tests could go here
lint                           Check Dockerfile for syntax errors
all                            Install requirements, lint, and test

make all

# To build the image and run it
./run_docker.sh

# To upload image to docker hub
upload_docker.sh

# To run the container in local minikube from docker hub
./run_kubernetes.sh
```
