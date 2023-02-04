## <p align="center"> PROJECT_03 ( How to create PersistentVolume and PersistentVolumeClaim ) </p>

![pj03](https://user-images.githubusercontent.com/120474799/216760493-89660718-551e-43eb-a3f0-da2f4353a7e3.png)

## What is this?
This is a sample project that I was practiced on persistent volume (pv) and persistent volume claim (pvc)

## What type of kubernetes resources used in this project?
In this sample project , I've used six types of kubernetes resources. These are  ...
- Deployment (deploy)
- Namespace (ns)
- Pod (po)
- Persistent Volume (pv)
- Persistent Volume Claim (pvc)

## Explain a little bit about of this project.
In this sample project, there are three namespaces (default ,staging and dev) and five persistent volumes on default namespace.It's created hostpath Persistent Volume.Each persistent volume claim on staging and dev namespaces will bound to this persistent volume.

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
- kubectl get cm -n staging
- kubectl get cm -n dev
- kubectl get secret -n staging
- kubectl get secret -n dev
- kubectl get deploy -n staging
- kubectl get deploy -n dev
- kubectl exec -it ## POD_NAME ## -n staging -- sh -c "printenv | grep MY"
- kubectl exec -it ## POD_NAME ## -n dev -- sh -c " ls -l /home/"

##  For Demonstration of this Project with burmese language on Youtube. <a href="YOUTUBE_LINK">Click Here</a>

## <p align="center">  Thank you!!! </p>
