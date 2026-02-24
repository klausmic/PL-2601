provider "aws" {
    region = "ap-south-1"
}

locals {
    instance_types = {
        dev = "t2.micro"
        test = "t2.medium"
        prod = "t2.large"
    }
}

resource "aws_instance" "my-ec2" {
    ami = "ami-051a31ab2f4d498f5"
    instance_type = local.instance_types[terraform.workspace]
    tags = {
        Name = "${terraform.workspace}-server"
    }
}

output "active_workspace" {
    value = terraform.workspace
}

output "selected_instance_type" {
    value = local.instance_types[terraform.workspace]
}