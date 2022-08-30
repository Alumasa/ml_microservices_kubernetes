[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Alumasa/ml_microservices_kubernetes/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Alumasa/ml_microservices_kubernetes/tree/main)

## This is the beginning of a fun project!

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it.
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Files in this repository

* app.py - Python file with the Machine Learning prediction code.
* Dockerfile - Contains a set of commands used to build a Docker image
* README.md - Description of the project
* Makefile - Contains instructions used by automation tools. It has these 4 commands:
    * setup - Creates and activates the virtual environment
    * install - Installs the required libraries and dependencies
    * lint - Lints the Docker and Python code
    * all - Runs all the above tasks
* requirement.txt - Contains the list of libraries required by the application
* run_docker.sh - A bash script that will build, tag and run a docker image.
* run_kubernetes.sh - A bash script that runs the docker image with kubernetes, also performs port forwarding
* upload_docker.sh - A bash script that tags and uploads the docker image to the DockerHub
* make_predictions.sh - A bash script that requests the application to provide a prediction
* config.yml - the CircleCI config file which builds the project automatically when commits are pushed.
* docker_out.txt - Output logs of the prediction after executing run_docker.sh
* kubernetes_out.txt - Output logs of the prediction after executing run_kubernetes.sh