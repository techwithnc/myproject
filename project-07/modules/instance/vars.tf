variable "ami_id" {}
variable "ec2_type" {}
variable "avail_zones" {
    type = list(string)
}
variable "private_subnet_id_1" {}
variable "private_subnet_id_2" {}
variable "public_subnet_id_1" {}
variable "public_subnet_id_2" {}
variable "private_ips" {
    type = list(string)
}
variable "security_gp_1" {}
variable "sshkey" {}