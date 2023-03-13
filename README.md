# terraform-VPC
Use Terraform to create an AWS VPC with subnets (public and private), an RDS MySQL instance, and Application load balancer

Deployment Parameters:

-- VPC with CIDR 10.0.0.0/16 with 
-- 2 public subnets with CIDR 10.0.1.0/24 and 10.0.2.0/24 
-- private subnet with CIDR 10.0.3.0/24
-- RDS MySQL instance (nano) and a 
-- load balancer that will direct traffic to the public subnets
