#########################################
# EC2 Instance
#########################################

resource "aws_instance" "web_server" {

  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id = var.ec2_subnet_number == 1 ? aws_subnet.public_subnet_1.id : aws_subnet.public_subnet_2.id

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  key_name = var.key_pair_name

  associate_public_ip_address = true

  tags = {

    Name        = "${var.project_name}-ec2"
    Environment = var.environment
    Owner       = var.owner

  }

}