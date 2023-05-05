## Repo for my all projects

In this repository I will upload my projects on DevOps, Cloud and also Integration of DevOps technology with other technologies  Git/Github, Docker etc.<br>

<a href="https://github.com/techwithnc/myproject/tree/main/project-08">PROJECT_08 ( Monitoring and Alerting with Prometheus )</a></b>
This is project that I was practiced on how to monitor and sent alerts with Prometheus.

<a href="https://github.com/techwithnc/myproject/tree/main/project-07">PROJECT_07 ( Provisioning AWS resources with Terraform )</a></b>
This is a simple terraform project that I was practiced on AWS.In this Project I have used terraform to provisioning some AWS resources.

<a href="https://github.com/techwithnc/myproject/tree/main/project-06">PROJECT_06 ( Automated WebSite Deployment using GitHub,Jenkins and DockerHub )</a></b>
This is a simple project that I was practiced on Github(webhook feature),Jenkins (Jenkinsfile,Github hook trigger, groovy language) and  Docker.In this Project I have used the Git/GitHub, Jenkins and Docker and integrated all these technologies to create an automated system for website application.When developer push codes to Github,the Jenkins server will automatically receive trigger from Github and start doing its jobs (build app , build Image and Push Image to Dockerhub).

<a href="https://github.com/techwithnc/myproject/tree/main/project-05">PROJECT_05 ( simple k8s project ) </a></b>
This is a simple project that I was practiced on kubernete features.

<a href="https://github.com/techwithnc/myproject/tree/main/project-04"> PROJECT_04 ( How to use EmptyDir, Sidecar container and init container )  </a></b>
There are four namespaces (default,e-dir,s-car and init) in this simple project.In e-dir namespace, there were two containers both have a same emptyDir volume.
In the s-car namespace, there were two pods.One of the pod contained two containers (main container and sidecar container). Other pod is used to generated logs on main container.
Total number of three containers contained in init namespace.The first container in the diagram is init containers,the two containers can only be running if init container is successfully completed.In here I just used service for init container to confirm successfully completed or not. 

<a href="https://github.com/techwithnc/myproject/tree/main/project-03">PROJECT_03 : How to create PersistentVolume and PersistentVolumeClaim </a></b>
In this simple project, there are three namespaces (default ,staging and dev) and four persistent volumes on default namespace.It's created hostpath Persistent Volume.Each persistent volume claim on staging and dev namespaces will bound to this persistent volume. <br>

<a href="https://github.com/techwithnc/myproject/tree/main/project-02">PROJECT_02 : How to use configmap and secret </a></b>
In this simple project , there were two namespaces (staging and dev). Each deployment created 5 replicas pods using techwithnc/busybox:1.0 docker images. In staging namespace, used configmap and secret for passing it's values into containers as environment variables. In dev namespace,used configmap and secret for mounting it's values into containes as volumes. <br>

<a href="https://github.com/techwithnc/myproject/tree/main/project-01">PROJECT_01 ( How to use Deployment, Liveness and Readiness Probes in kubernetes )  </a></b>
In this project I've create two kubernetes namespaces. One is test and another is dev.In each namespace there is one deployment that create three pods. <br>