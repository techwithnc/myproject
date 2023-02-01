# Project-01

![pj01](https://user-images.githubusercontent.com/120474799/216083959-19adf29b-c032-40df-903a-b1cf80308de1.png)

## What is this?
This is a sample project that run in kubernetes cluster.

## What type of kubernetes resources used in this project?
In this project , I've just used four type of kubernetes resources.They are ...
- Deployment
- Namespace
- ReplicaSet
- Pod.

## Explain a little bit about of this project.
There are two kubernetes namespaces. One is test and another is dev.In each namespace there is one deployment that create three pods.

## How to deploy this project? Show me the installation with step by step guide.
(1)Create two namespaces by the following commands.
- kubectl apply -f namespace-test.yaml      (create test namespace)
- kubectl apply -f namespace-dev.yaml       (create dev namespace)

(2)Create deployment for website using techwithnc/sampleweb:1.0 docker image.
- kubectl apply -f deployment-test.yaml

(3)Create deployment for website using techwithnc/sampleweb:2.0 docker image.
- kubectl apply -f deployment-dev.yaml