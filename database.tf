resource "aws_db_instance" "my_db" {
  allocated_storage    = 5
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
  count                = 2
  availability_zone    = "eu-west-1a,eu-west-1b"
  db_subnet_group_name = aws_db_subnet_group.my_db_subnet_group.name
}