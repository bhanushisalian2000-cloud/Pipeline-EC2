#########################################
# AWS Configuration
#########################################

variable "aws_region" {
  description = "AWS Region where resources will be created"
  type        = string
  default     = "ap-south-1"
}

#########################################
# Project Configuration
#########################################

variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "environment" {
  description = "Environment (dev, test, prod)"
  type        = string
}

#########################################
# VPC Configuration
#########################################

variable "vpc_cidr" {
  description = "VPC CIDR Block"
  type        = string
}

#########################################
# Public Subnet Configuration
#########################################

variable "public_subnet_1_cidr" {
  description = "Public Subnet 1 CIDR Block"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "Public Subnet 2 CIDR Block"
  type        = string
}

#########################################
# Availability Zones
#########################################

variable "availability_zone_1" {
  description = "Availability Zone for Public Subnet 1"
  type        = string
}

variable "availability_zone_2" {
  description = "Availability Zone for Public Subnet 2"
  type        = string
}

#########################################
# EC2 Configuration
#########################################

variable "ami_id" {
  description = "Amazon Machine Image (AMI) ID"
  type        = string
}

variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
}

variable "key_pair_name" {
  description = "AWS EC2 Key Pair Name"
  type        = string
}

#########################################
# Common Tags
#########################################

variable "owner" {
  description = "Owner of the resources"
  type        = string
}

#########################################
# Security Group Configuration
#########################################

variable "ssh_port" {
  description = "SSH Port"
  type        = number
}

variable "http_port" {
  description = "HTTP Port"
  type        = number
}

variable "https_port" {
  description = "HTTPS Port"
  type        = number
}

variable "allowed_cidr" {
  description = "Allowed CIDR Block"
  type        = string
}

#########################################
# EC2 Configuration
#########################################

variable "ec2_subnet_number" {
  description = "Choose the public subnet for EC2 (1 or 2)"
  type        = number

  validation {
    condition     = contains([1, 2], var.ec2_subnet_number)
    error_message = "Subnet number must be either 1 or 2."
  }
}

###########################################################

variable "s3_bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}