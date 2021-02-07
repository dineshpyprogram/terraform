resource "aws_instance" "my_instance" {
    instance_type = "t2.micro"
    ami = lookup(var.AMIS, var.region)
}