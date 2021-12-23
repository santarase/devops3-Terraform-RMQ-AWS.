provider "aws" {
    region = "ap-south-1"
    profile = var.profile
}

resource "aws_instance" "rmq" {
    ami = "ami-0851b76e8b1bce90b"
    instance_type = "t2.micro"
    key_name = "rabbitmq"
    vpc_security_group_ids = ["sg-0bf96f68b7deaec31"]

    tags = {
        Name = var.name
        group = var.group
    }
}
