data "aws_vpc" "vpc_selected" {
  filter {
    name   = "tag:Name"
    values = ["Development"]
  }
}

data "aws_subnet" "public_subnet" {
  filter {
    name   = "tag:Name"
    values = ["publicsubnet"]
  }
}

data "aws_security_group" "security_grp" {
  filter {
    name   = "tag:Name"
    values = ["bastion"]
  }
}