provider "aws" {
    region = "eu-west-3"
    profile = var.profile
}

resource "aws_instance" "rmq" {
    ami = "ami-064736ff8301af3ee"
    instance_type = "t2.micro"
    key_name = "rabbitmq"
    vpc_security_group_ids = ["sg-020498c32a34ae060"]

    tags = {
        Name = var.name
        group = var.group
    }
}