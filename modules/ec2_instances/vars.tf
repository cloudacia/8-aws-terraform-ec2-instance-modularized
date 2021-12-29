# AWS AMI IMANGE
variable "aws_amis" {
  type    = string
  default = "ami-1d4e7a66"
}

variable "ec2_type" {
  type    = string
  default = "t2.micro"
}

variable "ssh_key" {
}

variable "sg" {
  type = string
}

variable "subnet" {
}
