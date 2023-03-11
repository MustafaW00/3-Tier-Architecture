# Creating 2 EC2 instances in public subnet
resource "aws_instance" "this" {
  ami                    = "ami-006dcf34c09e50022"
  instance_type          = "t2.micro"
  availability_zone      = "eu-west-1a,eu-west-1b"
  count                  = 2
  vpc_security_group_ids = [aws_security_group.Sg.id]
}

# Creating security group
resource "aws_security_group" "Sg" {
  name_prefix = "http-access-"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "http-access"
  }
}


