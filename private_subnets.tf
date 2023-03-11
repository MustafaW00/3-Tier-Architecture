resource "aws_subnet" "private_subnet_1" {
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-west-1a"
  vpc_id            = aws_vpc.my_vpc.id
}

resource "aws_subnet" "private_subnet_2" {
  cidr_block        = "10.0.2.0/24"
  availability_zone = "eu-west-1b"
  vpc_id            = aws_vpc.my_vpc.id
}

resource "aws_db_subnet_group" "my_db_subnet_group" {
  name       = "my-db-subnet-group"
  subnet_ids = [aws_subnet.private_subnet_1.id, aws_subnet.private_subnet_2.id]
}

