## Repo for my all projects

In this repository I will upload my projects on DevOps, Cloud and also Integration of DevOps technology with other technologies  Git/Github, Docker etc.<br>

<a href="https://github.com/techwithnc/myproject/tree/main/project-04"> PROJECT_04 ( How to use EmptyDir, Sidecar container and init container )  </a></b>
There are four namespaces (default,e-dir,s-car and init) in this sample project.In e-dir namespace, there were two containers both have a same emptyDir volume.
In the s-car namespace, there were two pods.One of the pod contained two containers (main container and sidecar container). Other pod is used to generated logs on main container.
Total number of three containers contained in init namespace.The first container in the diagram is init containers,the two containers can only be running if init container is successfully completed.In here I just used service for init container to confirm successfully completed or not. 

<a href="https://github.com/techwithnc/myproject/tree/main/project-03">PROJECT_03 : How to create PersistentVolume and PersistentVolumeClaim </a></b>
In this sample project, there are three namespaces (default ,staging and dev) and four persistent volumes on default namespace.It's created hostpath Persistent Volume.Each persistent volume claim on staging and dev namespaces will bound to this persistent volume. <br>

<a href="https://github.com/techwithnc/myproject/tree/main/project-02">PROJECT_02 : How to use configmap and secret </a></b>
In this sample project , there were two namespaces (staging and dev). Each deployment created 5 replicas pods using techwithnc/busybox:1.0 docker images. In staging namespace, used configmap and secret for passing it's values into containers as environment variables. In dev namespace,used configmap and secret for mounting it's values into containes as volumes. <br>

<a href="https://github.com/techwithnc/myproject/tree/main/project-01">PROJECT_01 ( How to use Deployment, Liveness and Readiness Probes in kubernetes )  </a></b>
In this projet I've create two kubernetes namespaces. One is test and another is dev.In each namespace there is one deployment that create three pods. <br>
