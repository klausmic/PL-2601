provider "aws" {
    region = "ap-south-1"
}

terraform {
    backend "s3" {
        bucket = "my-unique-bucket-name-12345-kastro"
        key    = "prod/terraform.tfstate"
        region = "ap-south-1"
    }
}

resource "aws_instance" "remote-state-ec2" {
    ami = "ami-051a31ab2f4d498f5"
    instance_type = "t2.micro"

    tags = {
        Name = "remote-state-server"
    }
}

resource "aws_instance" "remote-state-ec2-2" {
    ami = "ami-051a31ab2f4d498f5"
    instance_type = "t2.micro"

    tags = {
        Name = "remote-state-server-2"
    }
}

output "instance_ids" {
    value = [aws_instance.remote-state-ec2.id, aws_instance.remote-state-ec2-2.id]
}