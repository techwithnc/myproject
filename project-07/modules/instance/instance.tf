// module for instance
resource "aws_instance" "instance01" {
    ami = "${var.ami_id}"
    instance_type = "${var.ec2_type}"
    availability_zone = "${var.avail_zones[0]}"
    subnet_id   = "${var.public_subnet_id_1}"
    private_ip = "${var.private_ips[0]}"
    vpc_security_group_ids = ["${var.security_gp_1}"]
    key_name        = "${var.sshkey}"
    user_data       = <<-EOF
              #!/bin/bash
              sudo hostnamectl set-hostname websvr01
              echo "Hello, This is webserver-01" > index.html
              python3 -m http.server 8080 &
              EOF
    tags = {
        Name = "websvr01"
    }  
}
resource "aws_instance" "instance02" {
    ami = "${var.ami_id}"
    instance_type = "${var.ec2_type}"
    availability_zone = "${var.avail_zones[1]}"
    subnet_id   = "${var.public_subnet_id_2}"
    private_ip = "${var.private_ips[1]}"
    vpc_security_group_ids = ["${var.security_gp_1}"]
    key_name        = "${var.sshkey}"
    user_data       = <<-EOF
              #!/bin/bash
              sudo hostnamectl set-hostname websvr02
              echo "Hello, This is webserver-02" > index.html
              python3 -m http.server 8080 &
              EOF
    tags = {
        Name = "websvr02"
    }  
}
resource "aws_instance" "instance03" {
    ami = "${var.ami_id}"
    instance_type = "${var.ec2_type}"
    availability_zone = "${var.avail_zones[0]}"
    subnet_id   = "${var.private_subnet_id_1}"
    private_ip = "${var.private_ips[2]}"
    vpc_security_group_ids = ["${var.security_gp_1}"]
    key_name        = "${var.sshkey}"
    user_data       = <<-EOF
              #!/bin/bash
              sudo hostnamectl set-hostname service01
              echo "Hello, This is service01" > index.html
              python3 -m http.server 8080 &
              EOF
    tags = {
        Name = "service01"
    }  
}
resource "aws_instance" "instance04" {
    ami = "${var.ami_id}"
    instance_type = "${var.ec2_type}"
    availability_zone = "${var.avail_zones[1]}"
    subnet_id   = "${var.private_subnet_id_2}"
    private_ip = "${var.private_ips[3]}"
    vpc_security_group_ids = ["${var.security_gp_1}"]
    key_name        = "${var.sshkey}"
    user_data       = <<-EOF
              #!/bin/bash
              sudo hostnamectl set-hostname service02
              echo "Hello, This is service02" > index.html
              python3 -m http.server 8080 &
              EOF
    tags = {
        Name = "service02"
    }  
}
