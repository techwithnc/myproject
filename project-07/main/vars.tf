variable "ami_id" {}
variable "ec2_type" {}
variable "avail_zones" {
    type = list(string)
}
variable "private_ips" {
    type = list(string)
}
variable "vpc_cidr" {}
variable "tenancy" {}
variable "subnet_cidrs" {
    type = list(string)
}
variable "ingress_ports" {
    type = list(string)
}
variable "protocol" {}
variable "region" {}
variable "bucket_name" {
  type = list
}