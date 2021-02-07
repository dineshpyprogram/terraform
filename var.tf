variable "AWS_ACCESS_KEY" {
    type = "string"
}

variable "AWS_SECRET_KEY" {
    type = "string"
}

variable "region" {
    type = "string"
    default = "us-east-1"
}

variable "AMIS" {
    type = "map"
    default = {
        us-east-1 = "ami-047a51fa27710816e"
        us-west-1 = "ami-005c06c6de69aee84"
    }
}"