# AWS EC2 INSTANCE
resource "aws_instance" "web01" {
  connection {
    type = "ssh"
    user = "ubuntu"
    host = self.public_ip
  }
  ami                         = var.aws_amis
  instance_type               = var.ec2_type
  key_name                    = var.ssh_key
  vpc_security_group_ids      = [var.sg]
  subnet_id                   = var.subnet
  user_data                   = filebase64("script/script.sh")
  associate_public_ip_address = true

  tags = {
    Name = "Project 1"
  }
}
