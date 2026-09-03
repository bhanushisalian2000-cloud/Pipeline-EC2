#########################################
# VPC Outputs
#########################################

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

#########################################
# Public Subnet Outputs
#########################################

output "public_subnet_1_id" {
  description = "Public Subnet 1 ID"
  value       = aws_subnet.public_subnet_1.id
}

output "public_subnet_2_id" {
  description = "Public Subnet 2 ID"
  value       = aws_subnet.public_subnet_2.id
}

#########################################
# Internet Gateway
#########################################

output "internet_gateway_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.igw.id
}

#########################################
# Route Table
#########################################

output "route_table_id" {
  description = "Route Table ID"
  value       = aws_route_table.public_rt.id
}

#########################################
# Security Group
#########################################

output "security_group_id" {
  description = "Security Group ID"
  value       = aws_security_group.web_sg.id
}

#########################################
# EC2 Outputs
#########################################

output "ec2_instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.web_server.id
}

output "ec2_public_ip" {
  description = "EC2 Public IP"
  value       = aws_instance.web_server.public_ip
}

output "ec2_public_dns" {
  description = "EC2 Public DNS"
  value       = aws_instance.web_server.public_dns
}