## <p align="center"> PROJECT_02 ( How to use configmap and secret ) </p>

![pj02](https://user-images.githubusercontent.com/120474799/216753965-31ae4f57-9a9c-4153-84f1-763a99aba38a.png)

## What is this?
This is a simple project that I was practiced on configmap and secret features.

## What type of kubernetes resources used in this project?
In this simple project , I've used six types of kubernetes resources. These are  ...
- Deployment
- Namespace
- ReplicaSet
- Pod
- Configmap
- Secret

## Explain a little bit about of this project.
In this simple project , there were two namespaces (staging and dev).
Each deployment created 5 replicas pods using techwithnc/busybox:1.0 docker images.
In staging namespace, used configmap and secret for passing it's values into containers as environment variables.
In dev namespace,used configmap and secret for mounting it's values into containes as volumes.

## How to deploy this project.
(1) Create two namespaces for staging and dev.
- kubectl apply -f namespace-staging.yaml
- kubectl apply -f namespace-dev.yaml

(2) Create configmap for each namespace.
- kubectl apply -f configmap-staging.yaml
- kubectl apply -f configmap-dev.yaml

(3) Create secret for each namespace.
- kubectl apply -f secret-staging.yaml
- kubectl apply -f secret-dev.yaml

(4) Create deployment for each namespace.
- kubectl apply -f deploy-staging.yaml
- kubectl apply -f deploy-dev.yaml

#### You can confirm wih the following commands.
- kubectl get ns
- kubectl get cm -n staging
- kubectl get cm -n dev
- kubectl get secret -n staging
- kubectl get secret -n dev
- kubectl get deploy -n staging
- kubectl get deploy -n dev
- kubectl exec -it ## POD_NAME ## -n staging -- sh -c "printenv | grep MY"
- kubectl exec -it ## POD_NAME ## -n dev -- sh -c " ls -l /home/"

##  For Demonstration of this Project with burmese language on Youtube. <a href="https://youtu.be/I89w2UTa4Sk">Click Here</a>

## <p align="center">  Thank you!!! </p>
