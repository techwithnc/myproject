terraform{
    required_providers{
        aws = {
            source = "hashicorp/aws"
            version = "4.56.0"
        }
    }
}
provider "aws"{
    region = "${var.region}"
}
module "instance_module" {
  source = "../modules/instance"
  ami_id = "${var.ami_id}"
  ec2_type = "${var.ec2_type}"
  avail_zones = "${var.avail_zones}"
  private_subnet_id_1 = "${module.networking_module.private_subnet_id_1}"
  private_subnet_id_2 = "${module.networking_module.private_subnet_id_2}"
  public_subnet_id_1 = "${module.networking_module.public_subnet_id_1}"
  public_subnet_id_2 = "${module.networking_module.public_subnet_id_2}"
  private_ips = "${var.private_ips}"
  security_gp_1 = "${module.networking_module.sg_id_1}"
  sshkey = "${module.sshkey_module.keypair01}"
}
module "networking_module" {
  source = "../modules/networking"
  vpc_cidr = "${var.vpc_cidr}"
  tenancy = "${var.tenancy}"
  subnet_cidrs = "${var.subnet_cidrs}"
  avail_zones = "${var.avail_zones}"
  ingress_ports = "${var.ingress_ports}"
  protocol = "${var.protocol}"
  instance_id_1 = "${module.instance_module.inst_id_1}"
}
module "loadbalancer_module"{
  source = "../modules/loadbalancer"
  security_gp_1 = "${module.networking_module.sg_id_1}"
  public_subnet_id_1 = "${module.networking_module.public_subnet_id_1}"
  public_subnet_id_2 = "${module.networking_module.public_subnet_id_2}"
  vpc_id = "${module.networking_module.vpc_id}"
  instance_id_1 = "${module.instance_module.inst_id_1}"
  instance_id_2 = "${module.instance_module.inst_id_2}"
}
module "storage"{
  source = "../modules/storage"
  bucket_name = "${var.bucket_name}"
}
module "sshkey_module" {
  source = "../modules/sshkey"
}
