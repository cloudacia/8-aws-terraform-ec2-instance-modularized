# VPC ID
output "ssh_key_name" {
  value = aws_key_pair.ssh_public_key.key_name
}
