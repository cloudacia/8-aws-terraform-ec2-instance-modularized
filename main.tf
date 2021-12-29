### CONFIGURING PROVIDER
provider "aws" {
  region = var.aws_region
}

### IMPORTING VPC MODULE
module "aws_vpc" {
  source = "./modules/vpc"
}

### IMPORTING SECURITY GROUP MODULE
module "aws_security_group" {
  source = "./modules/security_group"
  vpc_id = module.aws_vpc.vpc_id
}

### IMPORTING KEY PAIRS MODULE
module "ssh_key_pairs" {
  source = "./modules/key_pairs"
}

### IMPORTING EC2 INSTANCES MODULE
module "ec2_instances" {
  source  = "./modules/ec2_instances"
  ssh_key = module.ssh_key_pairs.ssh_key_name #
  sg      = module.aws_security_group.web_and_ssh_sg_id
  subnet  = module.aws_vpc.subnet01_id
}
