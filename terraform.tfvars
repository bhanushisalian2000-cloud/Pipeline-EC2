aws_region              = "ap-south-1"

project_name            = "terraform-demo"
environment             = "dev"

vpc_cidr                = "10.0.0.0/16"

public_subnet_1_cidr    = "10.0.1.0/24"
public_subnet_2_cidr    = "10.0.2.0/24"

availability_zone_1     = "ap-south-1a"
availability_zone_2     = "ap-south-1b"

ami_id                  = "ami-06158a479c7fc4bd7"
instance_type           = "t2.micro"
key_pair_name           = "devops_exp_key"

owner                   = "dev-ops"

ssh_port                = 22
http_port               = 80
https_port              = 443

allowed_cidr            = "0.0.0.0/0"

ec2_subnet_number       = 1

s3_bucket_name          = "pipeline-demo-593737766945"