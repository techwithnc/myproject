// Variable values for Staging-ENV
ami_id = "ami-03f6a11788f8e319e" // singapore-region
ec2_type = "t2.micro"
avail_zones = ["ap-southeast-1b", "ap-southeast-1c"]
private_ips = ["172.16.1.101", "172.16.2.102", "172.16.3.103", "172.16.4.104"]
vpc_cidr = "172.16.0.0/16"
tenancy = "default"
subnet_cidrs = ["172.16.1.0/24", "172.16.2.0/24", "172.16.3.0/24", "172.16.4.0/24"]
ingress_ports = ["80", "8080", "22"]
protocol = "tcp"
region = "ap-southeast-1"
bucket_name = ["techwithnc-bucket01"]