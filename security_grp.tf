#########################################
# Security Group
#########################################

resource "aws_security_group" "web_sg" {

  name        = "dev-test-sg"
  description = "Security Group for EC2"
  vpc_id      = aws_vpc.main.id

  #################################
  # SSH
  #################################

  ingress {

    description = "Allow SSH"

    from_port = var.ssh_port
    to_port   = var.ssh_port

    protocol = "tcp"

    cidr_blocks = [var.allowed_cidr]

  }

  #################################
  # HTTP
  #################################

  ingress {

    description = "Allow HTTP"

    from_port = var.http_port
    to_port   = var.http_port

    protocol = "tcp"

    cidr_blocks = [var.allowed_cidr]

  }

  #################################
  # HTTPS
  #################################

  ingress {

    description = "Allow HTTPS"

    from_port = var.https_port
    to_port   = var.https_port

    protocol = "tcp"

    cidr_blocks = [var.allowed_cidr]

  }

  #################################
  # Outbound Rules
  #################################

  egress {

    from_port = 0
    to_port   = 0

    protocol = "-1"

    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name        = "${var.project_name}-sg"
    Environment = var.environment
    Owner       = var.owner
  }

}