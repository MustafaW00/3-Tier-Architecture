
resource "aws_launch_template" "my_asg" {
  name_prefix   = "my_asg"
  image_id      = "ami-006dcf34c09e50022"
  instance_type = "t2.micro"
}

resource "aws_autoscaling_group" "my_asg" {
  availability_zones = ["eu-west-1a", "eu-west-1b"]

  desired_capacity = 2
  max_size         = 2
  min_size         = 2

  launch_template {
    id      = aws_launch_template.my_asg.id
    version = "$Latest"
  }
}