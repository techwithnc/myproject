## <p align="center"> PROJECT_04 ( How to use EmptyDir, Sidecar container and init container ) </p>

![pj04](https://user-images.githubusercontent.com/120474799/217431741-f465e6f7-0c9c-4452-8980-648fd041851b.png)

## What is this?
This is a sample project that I was practiced on emptyDir,sidecar container,init container,liveness probe and readiness probe features.

## What type of kubernetes resources used in this project?
In this sample project , I've used the following types of kubernetes features. These are  ...
- Deployment (deploy)
- Namespace (ns)
- Pod (po)
- EmptyDir
- Sidecar container

## Explain a little bit about of this project.
There are four namespaces (default,e-dir,s-car and init) in this sample project.In e-dir namespace, there were two containers both have a same emptyDir volume.
In the s-car namespace, there were two containers, one is main container and other one is sidecar container.
Total number of three containers exist in init namespace.The first container in diagram is init containers,the two containers can be run only if init container is successfully completed. 

## How to deploy this project.
(1) Create two namespaces (ns) for staging and dev.
- kubectl apply -f ns-staging.yaml
- kubectl apply -f ns-dev.yaml

(2) Create five persistent volumes (pv)
- kubectl apply -f pv01.yaml
- kubectl apply -f pv02.yaml
- kubectl apply -f pv03.yaml
- kubectl apply -f pv04.yaml

(3) Create five persistent volume claims (pvc)
- kubectl apply -f pvc01.yaml
- kubectl apply -f pvc02.yaml
- kubectl apply -f pvc03.yaml
- kubectl apply -f pvc04.yaml

(4) Create deployment for staging namespace.
- kubectl apply -f deploy01-staging.yaml
- kubectl apply -f deploy02-staging.yaml

(5) Create deployment for dev namespace.
- kubectl apply -f deploy01-dev.yaml

#### You can confirm wih the following commands.
- kubectl get ns
- kubectl get pv
- kubectl get pvc -n staging
- kubectl get pvc -n dev
- kubectl get deploy -n staging
- kubectl get deploy -n dev
- kubectl exec -it ## POD_NAME ## -n staging -- sh -c "ls -l /home"
- kubectl exec -it ## POD_NAME ## -n dev -- sh -c " ls -l /home"
- kubectl exec -it ## POD_NAME ## -n dev -- sh -c " ls -l /tmp"

##  For Demonstration of this Project with burmese language on Youtube. <a href="YOUTUBE_LINK">Click Here</a>

## <p align="center">  Thank you!!! </p>