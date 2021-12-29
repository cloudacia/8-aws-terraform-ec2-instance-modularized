### VPC ID
output "vpc_id" {
  value = module.aws_vpc.vpc_id
}

### EC2 INSTANCE PUBLIC IP
output "ec2_instance_public_ip" {
  value = module.ec2_instances.ec2_public_ip
}
