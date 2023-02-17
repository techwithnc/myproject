## <p align="center"> PROJECT_05 ( simple k8s project ) </p>

![pj05](https://user-images.githubusercontent.com/120474799/217478594-051046d6-e9d7-4ba8-b762-e39e0432c86f.png)


## What is this?
This is a simple project that I was practiced on kubernete features.

## What type of kubernetes resources used in this project?
In this simple project , I've used the following types of kubernetes features. These are  ...
- Deployment (deploy)
- Namespace (ns)
- Pod (po)
- Persistent Volume (pv)
- Persistent Volume Claim (pvc)
- Sidecar Container
- Init Container
- Service (svc)
- Configmap (cm)
- Secret

## How to deploy this project.
(1) Create two namespaces (ns) for staging and dev.
- kubectl apply -f ns-staging.yaml
- kubectl apply -f ns-dev.yaml

(2) Create configmap(cm) and secret for staging namespace.
- kubectl apply -f configmap.yaml
- kubectl apply -f secret.yaml

(3) Create persistent volume (pv).
- kubectl apply -f pv01.yaml
- kubectl apply -f pv02.yaml
- kubectl apply -f pv03.yaml

(4) Create persistent volume claim (pvc)
- kubectl apply -f pvc-staging.yaml
- kubectl apply -f pvc01-dev.yaml
- kubectl apply -f pvc02-dev.yaml

(5) Create service(svc) for both namespaces.
- kubectl apply -f svc-staging.yaml
- kubectl apply -f svc-dev.yaml

(6) Create deployment(deploy)
- kubectl apply -f deploy-staging.yaml
- kubectl apply -f deploy-dev.yaml

#### You can confirm wih the following commands.
- kubectl get ns
- kubectl get cm -n staging
- kubectl get secret -n staging
- kubectl get pv
- kubectl get pvc -n staging
- kubectl get pvc -n dev
- kubectl get svc -n staging
- kubectl get svc -n dev
- kubectl get pod -n staging
- kubectl exec -it ##_POD_NAME_## -n staging -- sh -c "printenv | grep COMPANY"
- kubectl exec -it ##_POD_NAME_## -n staging -- sh -c "ls -l /home"
- kubectl exec -it ##_POD_NAME_## -n dev -- sh -c "ls -l /home"

##  For Demonstration of this Project with burmese language on Youtube. <a href="YOUTUBE_LINK">Click Here</a>

## <p align="center">  Thank you!!! </p>
