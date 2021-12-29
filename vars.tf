### AWS REGION

variable "aws_region" {
  default = "us-east-1"
}

### VPC NAME
variable "vpc_name" {
  type    = string
  default = "prd"
}

### AWS AMI IMAGE
variable "aws_amis" {
  type = map(any)
  default = {
    us-east-1 = "ami-1d4e7a66"
  }
}
