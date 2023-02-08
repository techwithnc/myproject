## <p align="center"> PROJECT_05 ( sample k8s project ) </p>

![pj05](https://user-images.githubusercontent.com/120474799/217478594-051046d6-e9d7-4ba8-b762-e39e0432c86f.png)


## What is this?
This is a sample project that I was practiced on kubernete features.

## What type of kubernetes resources used in this project?
In this sample project , I've used the following types of kubernetes features. These are  ...
- Deployment (deploy)
- Namespace (ns)
- Pod (po)
- EmptyDir
- Sidecar Container
- Init Container
- Service (svc)

## Explain a little bit about of this project.
There are four namespaces (default,e-dir,s-car and init) in this sample project.In e-dir namespace, there were two containers both have a same emptyDir volume.
In the s-car namespace, there were two pods.One of the pod contained two containers (main container and sidecar container). Other pod is used to generated logs on main container.
Total number of three containers contained in init namespace.The first container in the diagram is init containers,the two containers can only be running if init container is successfully completed.In here I just used service for init container to confirm successfully completed or not. 

## How to deploy this project.
(1) Create three namespaces (ns) for e-dir,s-car and init.
- kubectl apply -f ns-e-dir.yaml
- kubectl apply -f ns-s-car.yaml
- kubectl apply -f ns-init.yaml

(2) Create deployment for e-dir namespace.
- kubectl apply -f deploy01-emptydir.yaml

(3) Create deployment for s-car namespace.
- kubectl apply -f deploy02-sidecar.yaml
- kubectl apply -f pod01-sidecar.yaml

(4) Create deployment for init namespace.
- kubectl apply -f deploy03-init.yaml
- kubectl apply -f svc01-init.yaml

#### You can confirm wih the following commands.
- kubectl get ns
- kubectl get deploy -n e-dir
- kubectl get deploy -n s-car
- kubectl get deploy -n init

- kubectl exec -it ##_POD_NAME_## -c myweb -n e-dir -- sh -c "cat /tmp/emptydir/date.txt"
- kubectl exec -it ##_POD_NAME_## -c mybusybox -n e-dir -- sh -c "cat /tmp/date-from-main/date.txt"

- kubectl exec -it ##_POD_NAME_## -c sidecar-container -n s-car -- sh -c "cat /tmp/main-app-log/access.log"

##  For Demonstration of this Project with burmese language on Youtube. <a href="YOUTUBE_LINK">Click Here</a>

## <p align="center">  Thank you!!! </p>
