## <p align="center"> PROJECT_01 ( How to use Deployment, Liveness and Readiness Probes in kubernetes ) </p>

![pj01](https://user-images.githubusercontent.com/120474799/216753926-6f8e3e6a-38c4-4183-8f83-dbd997506c6a.png)

## What is this?
This is a sample project that deploy sample website in kubernetes cluster.

## What type of kubernetes resources used in this project?
In this project , I've just used four type of kubernetes resources.They are ...
- Deployment
- Namespace
- ReplicaSet
- Pod.
- Liveness Probe
- Readiness Probe

## Explain a little bit about of this project.
There are two kubernetes namespaces. One is test and another is dev.In each namespace there is one deployment that create three pods.

## How to deploy this project?
(1) Create two namespaces by the following commands.
- kubectl apply -f namespace-test.yaml
- kubectl apply -f namespace-dev.yaml

(2) Create deployment for three pod that running sample website.
- kubectl apply -f deployment-test.yaml

(3) Create deployment for website that running sample website.
- kubectl apply -f deployment-dev.yaml

#### You can confirm with the following commands.
- kubectl get ns
- kubectl get deploy -n dev
- kubectl get deploy -n test
- kubectl describe deploy myapp -n dev
- kubectl describe deploy myapp -n test
- kubectl get pod -n dev
- kubectl get pod -n test

## What is the name of the docker image that used?
I've just used my custom docker image that build from nginx docke file.These are techwithnc/sampleweb:1.0 and techwithnc/sampleweb:2.0.

## I don't have my own kubernetes cluster.How do I test this project?
You can test your kubenetes project from the following link. https://killercoda.com/playgrounds/scenario/kubernetes . You will get 2 nodes and 1hr time. Each node have 1 core CPU and 2G memory.

##  For Demonstration of this Project with burmese language on Youtube. <a href="https://youtu.be/89oAt1JkQOM">Click Here</a>

## <p align="center">  Thank you!!! </p>
