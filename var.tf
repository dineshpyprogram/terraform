/*variable "AWS_ACCESS_KEY_ID" {
  type = string
}

variable "AWS_SECRET_ACCESS_KEY" {
  type = string
}*/

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-047a51fa27710816e"
    us-west-1 = "ami-005c06c6de69aee84"
  }
}

variable "availability_zone" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "additional_tags" {
  type = map(string)
  default = {
    "Name"    = "test_instance",
    "use"     = "tf practice",
    "account" = "aws"
  }
}

variable "security_group_id" {
  type = list(string)
}