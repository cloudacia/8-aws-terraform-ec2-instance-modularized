output "vpc_id" {
  value = aws_vpc.cloudacia_vpc.id
}

output "subnet01_id" {
  value = aws_subnet.subnet01.id
}
