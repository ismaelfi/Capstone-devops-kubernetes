
# Capstone Project

[![CircleCI](https://circleci.com/gh/ismailfi/Capstone-devops-kubernetes/tree/main.svg?style=svg)](https://circleci.com/gh/ismailfi/Capstone-devops-kubernetes/tree/main)

# Using a CI/CD approach, we build a Docker image and  run it in a Kubernetes cluster.

## Project Overview
In this project, I applied the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program.
I developed a CI/CD pipeline for micro services applications with rolling deployment.

These include:

* Working with AWS
* Using Circleci to implement Continuous Integration and Continuous Deployment
* Building Circleci pipelines
* Building Docker containers in the pipelines
* Working with eksctl and kubectl to build and deploy Kubernetes clusters.


## The project includes the following main tasks:

* Initialize the Python virtual environment: make setup
* Install all necessary dependencies: make install
* Test the project's code using linting: make lint
* Lints Dockerfile and python code
* Create a Dockerfile to "containerize" the "make change" application: Dockerfile
* Deploy to a public Docker Registry: Docker Hub the containerized application
* Install eksctl and Kubectl
* Create a Kubernetes cluster
* Configure & Deploy the application to the cluster
* Test and verify the application Curl the Load Balancer Hostname
* Update the app in the cluster, using a rolling-update strategy
